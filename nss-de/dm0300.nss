//<continuation number="410">
//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm0300.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;
	#ev030クリア登場=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0300sl.nss";

}


scene dm0300.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@dm*", 2000, 0, null);

	PrintBG("上背景", 30000);

	OnBG(10,"bg102031_1_平凡前通り");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Ah&, dammit&.  
Even I don't think I'm all that popular&, but&.&.&.

If those kids just had the capacity for even a tiny bit of 
cute in them&.&.&.

And now I have to clean the mess they left&.&.&.

Sheesh&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_草_漁る01");
	MusicStart("SE01",0,700,0,500,null,false);

	Wait(800);
	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
&.&.&.Hm? What?

I thought I heard something just now&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※りずりずり、どすーん！
	CreatePlainSP("絵板写", 5000);
	CreatePlainSP("絵板写弐", 2000);

	CreateTextureSP("絵一枚絵", 100, 0, 0, "cg/ev/m/ev030クリア登場_m.jpg");
	CreateTextureSP("絵一枚絵弐", 50, 0, 0, "cg/ev/m/ev030クリア登場_m.jpg");
	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵板写", 500, 0, 50, 0, 0, 500, Dxl1, false);
	Wait(500);

	Shake("絵一枚絵", 500, 10, 10, 0, 0, 500, Axl1, false);
	FadeDelete("絵板写*", 300, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000010a01">
"Whoooa!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Delete("絵一枚絵弐");
	CreateTextureSP("絵ＥＶ50", 50, 0, 0, "cg/ev/ev030クリア登場.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
S-something just fell all of the sudden!


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵一枚絵", 3000, @0, @-478, null, true);

//	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000020a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵一枚絵", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
&.&.&.What fell from the sky was apparently a person&.

But&.&.&. 
A human&.&.&. from the sky?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
From the physique&, it appears to be a man&. 
I can't see his face because his head is facing the other 
way&.

Is he&.&.&. 
He isn't dead&, right&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000030a04">
"U- uuun&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000040a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵ＥＶ*", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
The man moans and stands up&.

He's alive&.&.&.

I'm relieved&, but soon I find myself frozen in place 
again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSPTate("絵マスク中", 2010);//ナット名、優先度

	CreateTextureSP("絵マスク中/絵背景", 100, 0, Middle, "cg/bg/l/bg102031_1_平凡前通り_l.jpg");
	CreateTextureSP("絵マスク中/絵立絵", 700, 600, InBottom, "cg/fu/fuクリア_通常マスクあり_normal.png");


	Move("絵マスク中/絵立絵", 0, @0, @50, AxlDxl, true);
	SetShade("絵マスク中/絵背景", MEDIUM);



	Move("絵マスク中/絵背景", 1000, @-100, @0, AxlDxl, false);
	Move("絵マスク中/絵立絵", 1000, @-200, @0, AxlDxl, false);
	OpenTateMask("絵マスク中",200, 1000,Dxl3,true);//所要時間、水平倍率、テンポ、待ち

	Wait(1500);

//	DeleteSt("C", 200,true);
//	FadeDelete("絵板写", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
&.&.&.He doesn't have a face?<k>
{
	Move("絵マスク中/絵背景", 300, @-100, @0, Dxl1, false);
	Move("絵マスク中/絵立絵", 700, 140, @0, Dxl1, true);
}
No&, that's not it&. He's wearing a gas mask&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	CreatePlainSP("絵板写", 5000);
//	Delete("絵背景");
//	Delete("絵立絵");
//	FadeDelete("絵板写", 1000, null, true);
	CloseTateMask("絵マスク中",200,Dxl3,true);//ナット名、所要時間、テンポ、待ち

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000050a04">
"&.&.&.Ah&, that surprised me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
The man scratches his hair and looks around frantically&.

He seems to be fine&, but&.&.&. 
Isn't he injured or anything?

And why is he wearing a mask?

Falling down from above is really weird&, and no matter 
how you look at him he seems obviously suspicious&.

{	St("C",740, @0,@0,"stクリア_正面マスクあり_normal");
	FadeSt("C",180,true);}
As I stand petrified&, the gas mask guy turns and faces 
towards me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DeleteSt("C", 200,true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000060a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
I reflexively stop blinking and breathing&.

Don't come over here&.&.&.

Please ignore me and go somewhere else&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteSt("C", 300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
&.&.&.But wishing that was futile&, and the gas mask guy 
briskly approaches me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 0, 0, null);
	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000070a04">
"Master&, I'm okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm005",0,450,true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000080a01">
"&.&.&.Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
Master?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000090a04">
"I heard Master's voice&, so I came&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
&.&.&.What's this guy talking about?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000100a04">
"Is something wrong?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000110a01">
"No&, um&.&.&. I think you're mistaking me for someone else&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000120a04">
"Mistaking you for someone else?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000130a01">
"I'm not anyone's Master&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000140a04">
"No&, Master is Master&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000150a01">
"No&, you're wrong&. I don't even know you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000160a04">
"That's not true&. I'm Clear&, the one who carried you here
 yesterday&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※クリア紹介演出
//voice/ex/0000060c06
	Profile("クリア", "ex/0000060c06");

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000170a01">
"You carried me yesterday?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
Yesterday&, now that you mention it&.&.&.

After being in Rhyme&, I woke up lying here for some 
reason&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000180a01">
"Wait&.&.&. Were you the one who pulled me into Rhyme?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
That rabbit head had his face covered&, and I felt like 
his clothes were similar too&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000190a04">
"No&, that was not me&. But I thought that Master was Master
 and I carried you here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]

&.&.&.&.&.

&.&.&.His story doesn't quite make sense&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_正面マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000200a04">
"I heard Master's voice yesterday&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000210a04">
"Destruction and death&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm005", 1000, 10, null);

//	CreatePlainSP("絵板写", 10000);
//
//
//	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
//	CreateColorSPsub("絵窓/絵色黒", 5000, "WHITE");
//	CreateTextureSP("絵窓/絵背景", 1000, Center, Middle, "cg/ev/l/ev900もう１人の蒼葉_l.jpg");
//	CreateColorSP("絵窓/絵色黒帯", 4000, "BLACK");
//	DrawTransition("絵窓/絵色黒帯", 0, 0, 300, 50, null, "cg/data/slide_05_00_0.png", true);
//
//	Fade("絵窓/絵色黒", 0, 300, null, true);
//	DeleteSt("C", 0,true);
//	Wait(100);
//
//	Delete("絵板写");
//	Wait(100);
//
////	St("C",740, @0,@0,"buクリア_正面マスクあり_normal");
////	FadeSt("C",0,true);
//	FadeDelete("絵窓/絵*", 100, Dxl1, true);



	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000220a01">
"&.&.&.What?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	//TextBoxDelete(0);

//	DeleteSt("C", 200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
I've heard that somewhere&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_serious",3150,"fw蒼葉_通常_pain");
//	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000230a01">
"Why do you know those words&.&.&. Guh!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm005", 3000, 450, null);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 100, Center, 0, "cg/bg/l/bg102031_1_平凡前通り_l.jpg");
	CreateTextureSP("絵立絵", 700, Center, InBottom, "cg/fu/fuクリア_正面マスクあり_normal.png");
	SetShade("絵背景", MEDIUM);

//	St("C",740, @0,@0,"fuクリア_正面マスクあり_normal");
//	FadeSt("C",0,true);

	Move("絵立絵", 0, @0, @50, null, true);

	DeleteSt("C", 0,true);


	CreatePlainSP("絵板写弐", 4900);
	Request("絵板写弐", Smoothing);

	CreateSE("SE01","se擬音_コミカル_プニ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵板写弐", 500, 1300, 1000, Dxl1, false);
	FadeDelete("絵板写", 500, null, true);
	Zoom("絵板写弐", 500, 1200, 1000, Dxl2, true);

	Wait(300);

	CreateSE("SE01","se擬音_コミカル_プニプニ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("絵板写弐", 350, 1300, 1000, Dxl1, true);
	Zoom("絵板写弐", 350, 1200, 1000, Dxl2, true);
	Wait(80);
	Zoom("絵板写弐", 350, 1300, 1000, Dxl1, true);
	Zoom("絵板写弐", 350, 1200, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
Suddenly the gas mask guy takes hold of both of my 
cheeks and pulls them right and left&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ＳＥ：ぎゅむぎゅむと頬を引っ張る音

	CreateSE("SE01","se擬音_コミカル_プニプニ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵板写弐", 350, 1300, 1000, Dxl1, true);
	Zoom("絵板写弐", 350, 1200, 1000, Dxl2, true);
	Wait(80);
	Zoom("絵板写弐", 350, 1300, 1000, Dxl1, true);
	Zoom("絵板写弐", 350, 1200, 1000, Dxl2, true);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000240a01">
"Ow ow! Thah hurs!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"buクリア_正面マスクあり_normal");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000250a04">
"Master seems different from yesterday&. It's hard to
 explain what&, but if I had to say something&, I remember
 your face and voice being scruffier&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
While pinching my cheeks&, the gas mask guy keeps turning 
my head&.

Who is this guy!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000260a01">
"Ih hurss! Leggo!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000270a04">
"Okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景", 100, Center, 0, "cg/bg/l/bg102031_1_平凡前通り_l.jpg");
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵板写弐", 300, 1000, 1000, Dxl3, false);
	Fade("絵背景", 300, 1000, null, true);


	CreatePlainSP("絵板写", 5000);

	Delete("絵板写弐");
	Delete("絵立絵");
	DeleteSt("C", 0,true);
	Delete("絵背景");

	FadeDelete("絵板写", 100, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
The gas mask guy quickly releases his hands&.

Damn&, that hurt&.&.&. 
What's up with this guy!?

He pinched my cheeks without holding back&, and now it 
stings&.

While I rub my cheeks with watery eyes&, the gas mask guy 
tilts his head&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000280a04">
"I'll ask again&, but you really are Master&, right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000290a01">
"I already told you&, I'm not!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000300a04">
"I don't think that's the case&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000310a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
I stand silently irritated and take a deep breath in 
order to calm myself&.

Calm down&.&.&. If you let him get to you&, it's just 
what he wants&.

If this guy really is the rabbit head from yesterday&, I 
have to catch him and question him&.

He seems like an idiot now&, but if he gets angry won't 
his true nature come out?

I can't do it in Rhyme&, but if this becomes a fight in 
the real world&, I'll manage somehow&.

I'll just try irritating him a little&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000320a01">
"&.&.&.Hey!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	CreatePlainSP("絵板写弐", 500);

	SetShade("絵板写弐", LIGHT);
	Request("絵板写弐", Smoothing);

	CreateSE("SE01","se戦闘_打撃_風切り高01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵板写*", 0, 1300, 1300, Dxl1, false);
	FadeDelete("絵板写", 300, Dxl1, false);

	Wait(200);
	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 200, 1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
As soon as I finish my yell&, I throw a kick at the man's 
behind&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色白", 200, 0, Dxl1, true);
	CreateSE("SE01","se戦闘_打撃_ヒット低01");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",740, @0,@0,"fuクリア_通常マスクあり_normal");
	Shake("@StNameC/C*", 300, 0, 15, 0, 0, 500, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000330a04">
"Ahhh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123]
The gas mask guy leans back and holds his buttocks with 
both hands&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	ClearComic("涙",1000);
	ClearComicNext(20001,463, 147,21);

//	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
//	FadeSt("C",0,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0124]
//【クリア】※漫符：涙？
<voice name="クリア" class="クリア" src="voice/dm03/0000340a04">
"Please&, Master&.&.&. Stop it!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	ClearComicDelete("涙");
	ClearComicNexDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000350a01">
"&.&.&.Wha?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se擬音_コミカル_落ちる01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 800, @0, @100, Axl3, true);
	DeleteAllSt(500,true);

//	CreatePlainSP("絵板写", 5000);

//	Wait(500);

//	Delete("絵板写弐");

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(150,300,0,2,0,0,1000,Dxl1,false);
	FadeDelete("絵板写弐", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
The gas mask guy sinks to the floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000360a04">
"Please stop&, Master&.&.&. I can't&.&.&. break any more than
 this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000370a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0133]
&.&.&.Yeah&.

This guy isn't him&. Definitely not him&.

I'll just quickly finish up here and return to work&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0134]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000380a01">
"Anyway I'm not your Master&. I have work to do so I'm going back&. Bye&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0135]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000390a04">
"What should I do?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/0000400a01">
"Go home!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/0000410a04">
"Understood&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

	CreateSE("SE01","se物体_物_漁る01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
The gas mask guy nods obediently and digs through his 
pocket with his right hand&.

{	SetVolumeEX("SE01", 1000, 0, null);}
What he takes out is&.&.&.

&.&.&.Oh! 
A vinyl umbrella&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0300sl.nss"]

}
