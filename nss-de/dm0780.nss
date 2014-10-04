//<continuation number="70">
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


scene dm0780.nss_MAIN
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
	$GameName = "dm0790.nss";

	//▼頭痛レベル設定
	$HALevel=2;

}


scene dm0780.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "#000000");

	OnBG(10,"bg104031_5_蒼葉宅自室");
	FadeBG(0,true);

	CreateTextureSP("絵背景200", 200, -109, 0, "cg/bg/l/bg104031_5_蒼葉宅自室_l.jpg");
	CreateTextureSP("絵背景100", 100, -109, 0, "cg/bg/l/bg104031_5_蒼葉宅自室_l.jpg");
	SetShade("絵背景200", HEAVY);

	Delete("上背景");

	DrawTransition("絵色黒", 1000, 1000, 800, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(500);

	DrawTransition("絵色黒", 1000, 800, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(1000);

	DrawTransition("絵色黒", 1500, 1000, 0, 100, null, "cg/data/slide_05_00_0.png", true);

//※演出：蓮ルートのみ、ここで蓮ルートシナリオ「体が喰われる悪夢１」が入る。
//→dm0775のこと（千代子）

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.The next time I open my eyes&, all I see is the ceiling&. 


//{	Fw("fw蒼葉_通常_shock4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/8000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

/*
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 100, 0, 1000, 50, DxlAxl, "cg/data/slide_05_00_0.png", true);
	SetShade("絵背景", LIGHT);
	Wait(50);
	DrawTransition("絵黒幕", 100, 1000, 0, 50, DxlAxl, "cg/data/slide_05_00_0.png", true);

	DrawTransition("絵黒幕", 100, 0, 1000, 50, DxlAxl, "cg/data/slide_05_00_0.png", true);
	SetShade("絵背景", NULL);
	Wait(50);
	DrawDelete("絵黒幕", 100, 50, DxlAxl, "slide_05_00_0", true);

	Wait(500);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
This is&.&.&. my room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 1500, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(1300);

	DrawDelete("絵黒幕", 1000, 100, null, "slide_05_00_0", true);

	FadeDelete("絵背景200", 1500, null, true);

//	Fw("fw蒼葉_通常_shock4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I blink a few times&, and slowly my sense of reality comes 
back to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※頭痛レベル：２
//覇：頭痛
$HALevel=2;
	HAFade(2000, 0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Ouch&.&.&.

The inside of my head keeps pounding&.

I need some medicine&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝返り");
	MusicStart("SE01",0,700,0,900,null,false);

	Move("絵背景100", 1000, @0, @-100, Dxl1, false);
	FadeDelete("絵背景100", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
I sluggishly get up and I see Ren coiled up under the 
futon&.

Just like how he always would&.&.&. on a normal day&.

Looking at him&, I feel like I've come back to my senses&.

We finally came back home&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1500, 0, null);
}

I reach out my hand to Ren and start to lightly pet him&. 
He starts up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm07/8000020a06">
"Aoba&."

{	Fw("fw蒼葉_通常_confuse");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/8000030a01">
"Good morning&, Ren&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm07/8000040a06">
"Good morning&. How's your health?"

{	Fw("fw蒼葉_通常_sigh3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/8000050a01">
"I have a headache&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm07/8000060a06">
"I see&. You haven't taken any medicine yet?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm07/8000070a01">
"Nope&. Let's head downstairs&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,900,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I get up from my bed to leave&, and hold Ren in my arms 
with me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Ouch&.&.&.

It feels like an awful&, violent vibration keeps moving 
through my body&.


{	SoundPlay("@dm012",0,450,true);}
But I smell the scent of a lot of food coming from the 
hallway&, and forget the pain for a little while&.

Granny must've made something&.

&.&.&.Granny&. I'm so glad she's safe&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_蒼葉宅階段_登る通常01");
	MusicStart("SE01",0,700,0,1100,null,false);
	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
Since hapiness can't exactly fill my stomach&, I go 
downstairs&.  

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm0790.nss"]

}
