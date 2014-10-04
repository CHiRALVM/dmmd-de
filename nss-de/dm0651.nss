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


scene dm0651.nss_MAIN
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
	$GameName = "dm0660_vs.nss";

}


scene dm0651.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

//嶋：ＢＧＭ引き継ぎ注意
	SoundPlay("@dm009",0,450,true);

	PrintGO("上背景", 30000);

	OnBG(10,"bg402031_1_立ち入り禁止区域工場部屋01");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//==============================================
//※「クリアを探す」を選んだ場合
//==============================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	St("C",740, @0,@0,"stクリア_正面マスクあり_normal");
	FadeSt("C",200,true);
}
I turn around and see Clear facing some of the black-
clothed men&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm0660_vs.nss"]

}
