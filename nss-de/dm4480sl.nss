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


scene dm4480sl.nss_MAIN
{
$TEXTBOX_TYPE="暴露";
//■超速設定なし
	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	//


}


scene dm4480sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	TextBoxDelete(0);
	SoundPlay("@dm020b",0,450,true);
	PrintBG("上背景", 30000);

	OnBG(10,"bg205011_0_暴露クリア");
	FadeBG(0,true);


	S4SetChoiceBase();


	FadeDelete("上背景", 500, null, true);



//▽特殊選択肢

	S4WaitChoice();

//・もう休んでもいい
//・もうやめた方がいい

//※どちらも選ばないのが正解（$SetChoiceSelect=1）

//※蒼葉、現実へ戻る


//■選択肢
//	$select_fade=true;
//	SetChoice02("Incorrect","Correct");
//	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm4490_vs.nss";$クリア選択肢8=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm4490_vs.nss";$クリア選択肢8=1;}

//※特殊選択肢（暴露）から現実へ（千代子

	//PrintBG("絵背景", 20000);
	//CreateColorSP("絵色白", 10000, FFFFFF);
	CreateColorEXadd("絵色白", 10000, FFFFFF);
	Fade("絵色白",5000,1000,null,3000);
	//DrawDelete("絵背景", 1000, 100, null, "effect_01_00_0", true);

	SetVolumeEX("@dm*", 3000, 0, null);Wait(2000);

//	PrintBG("絵背景", 20000);
	Delete("S4*");

//(BAD ED)
//(GOOD ED)

}
