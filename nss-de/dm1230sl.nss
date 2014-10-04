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


scene dm1230sl.nss_MAIN
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


scene dm1230sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(0,true);

	St("C",740, @0,@0,"bu紅雀_通常_angry3");
	FadeSt("C",200,true);

	FadeDelete("上背景", 0, null, true);

//▼選択肢：紅雀
//→▽何か声をかける（紅雀ポント＋１）
//→▽黙って見守る


//■選択肢
	SetChoice02(" Say something"," Just stare at him");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm1232.nss";$紅雀選択肢6=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm1231.nss";$紅雀選択肢6=0;}

}
