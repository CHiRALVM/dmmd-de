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


scene dm0660sl.nss_MAIN
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


scene dm0660sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	OnBG(10,"bg402031_1_立ち入り禁止区域工場部屋01");
	FadeBG(0,true);

//嶋：ＢＧＭ引き継ぎ注意
	SoundPlay("@dm009",0,450,true);

	FadeDelete("上背景", 0, null, true);



//▼選択肢：紅雀
//→▽紅雀の敵を引きつける（紅雀ポイント＋１）
//→▽紅雀に近付く


//■選択肢
	SetChoice02(" Fight Koujaku's enemies"," Approach Koujaku");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0661_vs.nss";$紅雀選択肢4=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm0662_vs.nss";$紅雀選択肢4=0;}



//	ClearFadeAll(1000, true);

}
