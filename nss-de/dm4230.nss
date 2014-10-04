//<continuation number="240">
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


scene dm4230.nss_MAIN
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
	#bg301061_5_別タワー前=true;
	#bg301062_5_別タワー前タワー見上げ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4240.nss";

}


scene dm4230.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm004",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg301061_5_別タワー前");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg301021_5_プラチナジェイル中通り4アクア.jpg");

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

//※場面転換→偽タワー前
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.&.&.

I walk along according to Clear's map&, but something seems off&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/3000010a01">
"Hey&, Ren&. Isn't this nowhere near Oval Tower?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm42/3000020a06">
"I believe so&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Right now&, Oval Tower is to the right&.
But we're walking to the left&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/3000030a01">
"But we'll be reaching the marked place soon&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	FadeDelete("絵背景", 0, null, true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
While walking in a confused state&, I arrive at the place 
marked on Clear's map&.

But it's definitely not at Oval Tower&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/3000040a01">
"What is he doing&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	SetVolumeEX("@dm*", 2000, 0, null);

//覇：コイルは後回し
//※コイルの着信音
//	Wait(500);

	//★コイル着信
	CreateSE("coilsound_phone_call","se物体_コイル_着信蒼葉");
	MusicStart("coilsound_phone_call",0,700,0,1000,null,true);

	Wait(3000);

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑧コイル電話設置
	CoilPhone_IncallSet(368,30,"dm4210","Clear",false);

	//▼①コイル演出表示
	CoilStartFade();
	//▼⑧コイル電話表示
	CoilPhone_CallFade();
	//○コイル待ち
	CoilWait();

	Wait(1000);

	//▼⑧コイル電話出た
	CoilPhone_CallOn(@0,@0,"stクリア_正面マスクあり_normal");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//※コイル電話
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/3000050a04">
"Master!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/3000060a01">
"Hey&, Clear&. I think the map you sent me is wrong&."

{
	DeleteFw();
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/3000070a04">
"No&, it is not&. I'm right here! Up here!"

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/3000080a01">
"Up?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_01_0.png", true);

	//★コイル全消去
	CoilEnd();

	CreateTextureSP("絵窓背景", 200, Center, InBottom, "cg/bg/bg301062_5_別タワー前タワー見上げ.jpg");
	CreateTextureEX("絵窓背景弐", 205, Center, Middle, "cg/bg/l/bg301062_5_別タワー前タワー見上げ_l.jpg");
	Move("絵窓背景弐", 0, @-250, @50, Dxl1, true);

	Move("絵窓背景", 1000, @0, -550, Dxl1, false);
	DrawTransition("絵黒幕", 1000, 1000, 0, 100, Dxl1, "cg/data/slide_02_01_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
I look up and&.&.&. I can't believe my eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵窓背景弐", 1000, @-50, @0, Dxl1, false);
	Fade("絵窓背景弐", 1000, 1000, null, true);

	Delete("絵窓背景");

	Wait(500);

	CreateTextureEX("絵効果", 1000, 350, 30, "cg/ef/efクリア間違いタワー.png");
	CreateSE("SE01","se物体_コイル_操作音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵効果", 200, 1000, null, true);
	Wait(20);
	Fade("絵効果", 200, 0, null, true);
	Wait(20);
	CreateSE("SE01","se物体_コイル_操作音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵効果", 200, 1000, null, true);
	Wait(20);
	Fade("絵効果", 200, 0, null, true);
	Wait(20);
	CreateSE("SE01","se物体_コイル_操作音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵効果", 200, 1000, null, true);
	Wait(20);

	SoundPlay("@dm003",0,450,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text091]
I can see Clear up in the window of the building&, waving 
his hand at me&.

He&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景100", 100, -328, -306, "cg/bg/l/bg301061_5_別タワー前_l.jpg");
	Fade("絵窓*", 0, 0, null, true);
	Fade("絵効果", 0, 0, null, true);

	Move("絵背景100", 500, -328, -372, Dxl1, false);
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
In front of the building Clear's in&, letters spelling 
"Overr Tower" are on a sign&.

&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景100", 500, null, true);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/3000090a01">
"That idiot&.&.&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm42/3000100a06">
"It seems like he got the wrong tower&."

{	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/3000110a01">
"How do you make a mistake like that?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm42/3000120a06">
"I'm not quite sure&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 5000);
	Fade("絵窓*", 0, 1000, null, true);
	Fade("絵効果", 0, 1000, null, true);
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
I stare at Clear&, turn my face to my Coil&, and take a 
breath&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/3000130a01">
"Idiot! Get down from there right now!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicNext(21000,390,0,26,"fu");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【クリア】※漫符：飛汗３
<voice name="クリア" class="クリア" src="voice/dm42/3000140a04">
"Master! No! Shh! Shhh!"

{	Fw("fw蒼葉_通常_shout");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/3000150a01">
"You're in the wrong place! So get down here as quickly as
 possible!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
	ClearComicNexDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/3000160a04">
"Eh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
Clear's restlessness suddenly comes to a complete stop&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/3000170a04">
"I really did?"

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/3000180a01">
"Yeah&, you did!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicNext(21000,440,65,16,"fu");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【クリア】※漫符：ズーン
<voice name="クリア" class="クリア" src="voice/dm42/3000190a04">
"N-No way!"

{	Fw("fw蒼葉_通常_shout");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/3000200a01">
"Get down first&, be shocked later!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicNexDelete();
	ClearComicNext(21000,433,65,18,"fu");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
//【クリア】※漫符：呪いマース？
<voice name="クリア" class="クリア" src="voice/dm42/3000210a04">
"Yes&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicNexDelete();

	CreatePlainSP("絵板写", 5000);

	Delete("絵効*");

	OnBG(10,"bg301061_5_別タワー前");
	FadeBG(0,true);

	DrawDelete("絵板写", 300, 100, Axl1, "slide_05_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
The gas mask disappears from the window&.

{	FadeDelete("絵窓*", 700, null, true);}
A little later&, Clear comes out of the entrance while 
hanging his head&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
	ClearComicNext(21000,422,60,18);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【クリア】※漫符：呪いマース？
<voice name="クリア" class="クリア" src="voice/dm42/3000220a04">
"I'm sorry&.&.&."

{	ClearComicNexDelete();
	Fw("fw蒼葉_通常_sigh3");
}

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/3000230a01">
"&.&.&.Anyway&, let's just get back to Glitter&."

{
	DeleteFw();
	ClearComicNext(21000,422,60,18);
}
//【クリア】※漫符：呪いマース？
<voice name="クリア" class="クリア" src="voice/dm42/3000240a04">
"Yes&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicNexDelete();

	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
I pull Clear along and wearily head back the way I came&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearFadeAll(0, true);

//※次ファイル["dm4240.nss"]

}
