//<continuation number="30">
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


scene dm3330.nss_MAIN
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
	#bg302051_5_グリッターエントランス壁側=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3340.nss";

}


scene dm3330.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -486, -576, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	FadeDelete("絵背景100", 500, null, true);}
Feeling someone's gaze on me&, I turn around to find Mink 
puffing clouds of smoke while staring at me&.

Seeing him sitting on the sofa like that reminds me of the time when I was taken to that abandoned building&.

It wasn't that long ago&, but it feels like it was&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/3000010a05">
"It seems your Allmate is quite the understanding type&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/3000020a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
I don't respond and simply glare at him&.

I have to stop Toue to save everyone in the Old Resident 
District&.

So I'm not wrong to work with Mink&.

Plus&, Ren said that our chance of succeeding in this is 
high&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I understood that&, yet couldn't come to a clear decision&.

I should be doing the right thing&.&.&.

{	CreateTextureEX("絵背景100", 100, -316, -570, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");
	Move("絵背景100", 500, -216, -570, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

	CreateSE("SE02","se人体_動作_抱く01");
	MusicStart("SE02",0,700,0,700,null,false);}
I hold Ren closer to me as I sit on the floor up against 
the wall&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302051_5_グリッターエントランス壁側");
	FadeBG(0,true);

	Move("絵背景100", 1000, -116, -570, Dxl1, false);
	FadeDelete("絵背景100", 1000, null, true);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I lightly stroke his soft fur while avoiding looking 
towards Mink&.

Is this really the right thing to do?

To use Ren as a tool&.&.&. Is this okay?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSPTate("絵マスク中", 2010);//ナット名、優先度

	CreateTextureSP("絵マスク中/絵画像", 1000, 220, 14, "cg/ev/ev004犬蓮起動a.jpg");
	Request("絵マスク中/絵画像", Smoothing);
	Zoom("絵マスク中/絵画像", 0, 1050, 1050, null, true);

	Move("絵マスク中/絵画像", 500, @0, @-20, Dxl1, false);
	FadeDelete("絵板写", 100, null, false);

	OpenTateMask("絵マスク中",200, 1200,Dxl3,true);//所要時間、水平倍率、テンポ、待ち

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Ren looks at me with his tongue hanging out&.

When I see his face&, all my guilt and regret seep out&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CloseTateMask("絵マスク中",200,Dxl3,true);//ナット名、所要時間、テンポ、待ち

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/3000030a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
I push my face into his fur&, my emotions crushing me&.

{	SetVolumeEX("@dm*", 3000, 0, null);}
I'm so sorry&, Ren&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	//TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I stayed liked that for some time&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(3000);

//※次ファイル["dm3340.nss"]

}
