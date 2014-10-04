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


scene dm0420sl.nss_MAIN
{
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


scene dm0420sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	SoundPlay("@dm009",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg101051_5_旧住民区通り裏路地06ライム喧騒モブ");
	FadeBG(0,true);

	CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev042ノイズＶＳ紅雀.jpg");

	FadeDelete("上背景", 0, null, true);



//▼選択肢[紅雀orノイズ]：
//→▽紅雀に声をかける（紅雀ポイント＋１）
//→▽ノイズに声をかける（ノイズポイント＋１）


//■選択肢
	SetChoice02(" Call out to Koujaku"," Call out to Noiz");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0421.nss";$紅雀選択肢3=1;$ノイズ選択肢3=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0422.nss";$紅雀選択肢3=0;$ノイズ選択肢3=1;}



//	ClearFadeAll(1000, true);

}
