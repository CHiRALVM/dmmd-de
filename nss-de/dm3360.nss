//<continuation number="60">
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


scene dm3360.nss_MAIN
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
	$GameName = "dm3360sl.nss";

}


scene dm3360.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

//あきゅん「演出：ここのミンクは下から舐めるように登場させる、絶望感」

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景", 100, Center, InBottom, "cg/bg/l/bg301041_5_プラチナジェイル通り路地02_l.jpg");
	CreateTextureSP("絵立絵", 500, Center, InBottom, "cg/st/l/stミンク_通常正面_normal_l.png");
	CreateStencil("マスク１",1000,Center,InBottom,128,"cg/st/l/stミンク_通常正面_normal_l.png",false);
	CreateColorEX("マスク１/色１", 500, 0, 0, 800, 600, "BLACK");
	CreateColorEXsub("絵色黒", 5000, 0, 0, 1024, 576, "WHITE");
	CreateColorEX("絵色黒弐", 101, 0, 0, 1024, 576, "BLACK");

	SetShade("絵背景", MEDIUM);

	Fade("マスク１/色１", 0, 1000, null, true);
	Fade("絵色黒", 0, 500, null, true);
	Fade("絵色黒弐", 0, 300, null, true);


	Fade("絵色黒", 1000, 500, null, false);
	FadeDelete("マスク１/色１", 2000, Axl1, false);
	FadeDelete("上背景", 1000, null, true);
	Wait(2000);
	Delete("マスク*");

	Move("絵立絵", 4000, @0, @600, AxlDxl, false);
	Move("絵背景", 4000, @0, @300, AxlDxl, true);


	Wait(1000);

	PrintBG("上背景", 30000);

	OnBG(10,"bg301041_5_プラチナジェイル通り路地02");
	FadeBG(0,true);

	St("C",740, @0,@0,"stミンク_通常正面_normal");
	FadeSt("C",0,true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/6000010a05">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Standing there&, blocking my path&.&.&. was Mink&.

My heart drops as I accept that my plans had failed&. 

Mink must have known from the start&, probably&.

Knowing what I was thinking and how I would do it&, even&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEXmul("絵色黒", 5000, "000000");

	Fade("絵色黒", 1500, 700, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
&.&.&.I can't win&.

Those words weigh down my heart&.
I can't win against him&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵色黒", 500, null, true);
	Wait(300);
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_足音_歩く01");
	MusicStart("SE01",0,800,0,700,null,false);

	Wait(2200);

	CreateSE("SE01","se人体_足音_一歩01");
	MusicStart("SE01",0,800,0,700,null,false);

//	St("C",740, @0,@0,"buミンク_通常正面_normal");
//	FadeSt("C",0,true);

//	FadeDelete("絵色黒", 500, null, true);

//	CreateSE("SE02","se人体_動作_衣擦れ02");
//	MusicStart("SE02",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_掴む01");
	MusicStart("SE02",0,800,0,700,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
Mink walked over in his usual manner and grabbed my bangs 
as I hung my head down in shame&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/6000020a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
My expression twists as the pain runs through my hair&.

{	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,900,null,false);
	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");}
He pulls my face up&, and my eyes can't escape his&.

{	St("C",740, @0,@0,"buミンク_通常正面_normal");
	FadeSt("C",200,true);}
His chilling gaze shoots right through me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミンク_通常正面_angry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/6000030a05">
"I thought you would do this&, you punk-ass&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
Mink pulls my hair up and lowers his face to mine without 
a word&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミンク_通常正面_serious");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/6000040a05">
"Don't think you can run from me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

/*
	SetVolumeEX("@dm*", 0, 200, null);

//あきゅん「演出：ミンクの蟲毒、仮演出」
	CreateMaskEX("絵覆", 0, 0, 0, "cg/data/mosaic_01_00_0.png", false);
	CreatePlainEX("絵覆/絵板写", 5000);
	SetShade("絵覆/絵板写", SEMIHEAVY);

	CreateSE("SE01","se人体_心臓_鼓動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵覆/絵板写", 0, 1000, null, true);
	Wait(30);
	FadeDelete("絵覆/絵板写", 1000, null, true);
	DrawDelete("絵覆/絵板写", 100, 100, null, "worm_01_00_0", true);

	SetVolumeEX("@dm*", 0, 450, null);
*/

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/6000050a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
What was that just now?

A small stimulus ran through my body like electricity&.

But not with fear or like a shiver&, something more&.&.&.

"Something" from a much deeper place&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/6000060a05">
"Come&. I'm going to beat you&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
As he says that&, he lets go of my hair and grabs my arm 
instead&.

My entire body goes pale&, and a numbness envelopes my 
hands and feet&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm3360sl.nss"]

}
