//<continuation number="130">
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


scene dm4200.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4210.nss";

}


scene dm4200.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -232, -472, "cg/bg/l/bg302021_5_グリッター居間_l.jpg");

	Delete("上背景");

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/0000010a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Just as I'm about to touch his gas mask&, Clear grabs my 
hand&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/0000020a01">
"&.&.&.&.&."

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/0000030a04">
"What's wrong&, Master?"

{	Fw("fw蒼葉_通常_fake");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/0000040a01">
"&.&.&.Oh&, so you weren't actually asleep&."

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/0000050a04">
"No&, I was sleeping&. But I felt your presence&, Master&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Clear's reponse sort of makes me draw back&.
He sleeps as light as a dog&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm013",0,450,true);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/0000060a04">
"Master&, do you want to see what's under this mask?"

{	FwPro("fw蒼葉_通常_shock",1500,"fw蒼葉_通常_confuse");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/0000070a01">
"Eh? &.&.&.Well&, yeah&. It bothers me when people hide things&.
 But it's fine if you really don't want to&."

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/0000080a04">
"No&, it's fine&. If Master wants to see&, then I will take it
 off&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1200,null,false);

	FadeDelete("絵背景100", 500, null, true);

	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Clear lets go of my hand and stands up&, and then reaches 
for his mask with both hands&.

No way&.&.&. Is he really going to show me?

My heart beats quickly and I stare at his mask&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Clear pulls on it with his fingertips&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 500, 0, null);

//	Wait(700);

	St("C",740, 162, 550,"fuクリア_通常おかめ_normal");
	FadeSt("C",0,true);
	Move("@StNameC/C*", 200, 162, -84, Dxl1, true);

	CreateSE("SE01","se擬音_コミカル_ポイ01");
	MusicStart("SE01",0,700,0,800,null,false);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/0000090a04">
"Ta-da!"

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/0000100a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
What was hiding under his mask was&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se擬音_コミカル_プニプニ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ブラー１", 5000, Center, Middle, "SCREEN");
	SetBlur("絵ブラー１", 3, true, 400, 300);

	Fade("絵ブラー１", 0, 500, Dxl1, true);
	Zoom("絵ブラー１", 300, 1200, 1000, Dxl1, false);

	Fade("絵ブラー１", 300, 0, null, true);
	Delete("絵ブラー１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
A fair skinned&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se擬音_コミカル_ボワン02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ブラー１", 5000, Center, Middle, "SCREEN");
	SetBlur("絵ブラー１", 3, true, 400, 300);

	Fade("絵ブラー１", 0, 500, Dxl1, true);
	Zoom("絵ブラー１", 300, 1000, 1100, Dxl1, false);

	Fade("絵ブラー１", 300, 0, null, true);
	Delete("絵ブラー１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
And round&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se擬音_コミカル_キラキラ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ブラー１", 5000, Center, Middle, "SCREEN");
	SetBlur("絵ブラー１", 3, true, 400, 300);

	Fade("絵ブラー１", 0, 500, Dxl1, true);
	Zoom("絵ブラー１", 300, 1300, 1300, Dxl1, false);

	Fade("絵ブラー１", 300, 0, null, true);
	Delete("絵ブラー１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
Woman's face&.

A mask of some woman&.

So Clear's true face was of a woman&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	CreateSE("SE01","se擬音_効果_ドン03");
	MusicStart("SE01",0,700,0,500,null,false);

	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
As-fucking-if!!!

{	DeleteAllSt(200,true);}
He put another mask under his gas mask!?

I get worked up expecting some sort of serious reveal&, but instead my anger boils over in disappointment&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常おかめ_normal");
	FadeSt("C",200,true);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/0000110a01">
"You little- Cut that out!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	Move("@StNameC/C*", 200, @0, @50, Dxl1, false);
	DeleteAllSt(200,true);

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1200,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
I yell and Clear falls to the sofa&, this time with his 
gasmask slipped back on&.

//Was previously: I yell and Clear falls to the sofa&, this time with his gasmask still on&.

He takes the exact same posture he had when he fell asleep&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景100", 100, -332, -472, "cg/bg/l/bg302021_5_グリッター居間_l.jpg");
	Move("絵背景100", 500, @100, @0, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm42/0000120a04">
"Zzzzzzz&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
&.&.&.&.&.

&.&.&.This guy just pisses me off sometimes!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
I felt like kicking him off the couch&, but that seemed too violent&.

I just need to have the energy and stamina to deal with 
this crap&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景100", 500, null, true);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/0000130a01">
"&.&.&.I'm going to go sleep too&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景弐", 100, Center, Middle, "cg/bg/bg302011_5_グリッター部屋01.jpg");
	Fade("絵背景弐", 500, 1000, null, true);

	OnBG(10,"bg302011_5_グリッター部屋01天井");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 50, Center, Middle, "cg/bg/bg302011_5_グリッター部屋01天井.jpg");

	Wait(300);

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵背景弐", 500, null, true);
	FadeDelete("絵背景", 200, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
I leave Clear&, head to my room&, and then lie on the bed&.

Today's just been one problem after another&.

I wonder if I'll be alright from now on&.

I'm not exactly sure what happened&, but I think we got a 
lot of yakuza to hate us&.&.&.

We're still struggling to find a way to Toue&, and to have 
even more problems gives me a bad feeling&.

And there's always that possibility of&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm42/0000131a01">
"This is way too difficult&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
I grow pessimistic thinking about Clear&, and slowly close 
my eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(2000, true);

	Wait(3000);

//※次ファイル["dm4210.nss"]

}
