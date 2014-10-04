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




scene dm0400sl.nss_MAIN
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


scene dm0400sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm002",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg102011_5_平凡店内");
	FadeBG(0,true);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);



//▼選択肢：ノイズ
//→▽ちゃんと話をする（ノイズポイント＋１）
//→▽絶対嫌だ


//■選択肢
	SetChoice02(" Talk it out"," No way");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0401.nss";$ノイズ選択肢2=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm0402.nss";$ノイズ選択肢2=0;}



//	ClearFadeAll(1000, true);

}
