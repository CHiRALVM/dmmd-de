//<continuation number="0">
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


scene dm2100.nss_MAIN
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
	$GameName = "dm2110.nss";

}


scene dm2100.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒下地", 10, "000000");

	CreateSE("SE11","se物体_東江タワー_地鳴り01L");
	MusicStart("SE11",1000,400,0,500,null,true);

	dm2100smoke();

	Wait(500);

	FadeDelete("上背景", 500, null, true);

//※夢
//以下、白蒼葉の囁き
//※もやもやと霧の中にいるような雰囲気

//	CreateMaskEX("絵覆壱", 0, 0, 0, "cg/data/effect_01_00_0.png", false);
//	CreateColorEX("絵覆壱/絵白", 5000, "FFFFFF");

//あきゅん「↓：霧擬似アニメこれをプロセス化します」
/*
	while(1)
	{
	Rotate("絵覆壱", 0, @0, @180, @0, null,true);
	Zoom("絵覆壱", 0, 1000, 1000, null, true);

	Zoom("絵覆壱", 5000, 1500, 1100, null, false);
	Fade("絵覆壱/絵白", 2000, 1000, null, true);
	Wait(750);
	Fade("絵覆壱/絵白", 2250, 0, null, true);
	Wait(500);
	}
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.&.&.

&.&.&.&.&.

&.&.&.&.&.&.&.

&.&.&.Deep down&, you know it&, don't you?
Just admit it&.

It'll be easier if you do&.
Everything will be exactly how you want it to be&.

So&, admit it&.
Admit and accept it&.

Then everything will be more fun&.
You know that&, right?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Right&.&.&.

&.&.&.&.&.

&.&.&.&.&.

&.&.&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※夢、ここまで

	SetVolumeEX("SE*", 2000, 0, null);
	ClearFadeAll(2000, true);
	dm2100smokeDelete();
	Wait(1000);

//※次ファイル["dm2110.nss"]

}
