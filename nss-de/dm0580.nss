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


scene dm0580.nss_MAIN
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
	#bg108012_1_北地区外れの通り=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0580sl.nss";

}


scene dm0580.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg108012_1_北地区外れの通り");
	FadeBG(0,true);

	SoundPlay("@dm002",0,450,true);

	FadeDelete("上背景", 1500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
From the outside view&, I realized that the building I was 
taken to was in the North district&.

I leave the building and face the direction of the East 
district&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg101051_5_旧住民区通り裏路地06");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I don't know how much time I spent in that gloomy building&,but the sun was high up in the sky as I left&.

Mink traveled through back streets rather than the main 
ones&. It seems like he doesn't want to be seen by too 
many people&.

For a person like him&, there might be a reason he doesn't 
want to be seen&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg101022_5_旧住民区通り裏路地02");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
The headaches calmed down considerably&, but I'm not in top shape and walk slowly&. A distance starts to open up betweenMink and I&.

{
	CreateTextureEX("絵背景100", 100, -340, -528, "cg/bg/l/bg101022_5_旧住民区通り裏路地02_l.jpg");
	Move("絵背景100", 800, -440, -528, Dxl1, false);
	Fade("絵背景100", 800, 1000, null, true);
}
We turn a bunch of corners&, and I find myself about to 
lose sight of the back I'm supposed to follow&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0580sl.nss"]

}
