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


scene dm5380sl.nss_MAIN
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


scene dm5380sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm006",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg304041_5_東江タワー研究エリア研究室");
	FadeBG(0,true);

	St("ML",720, @0,@0,"stウイルス_通常バッヂ_normal");
	St("MR",720, @0,@0,"stトリップ_通常バッヂ_smile");
	FadeAllSt(0,true);

	FadeDelete("上背景", 0, null, true);

//ウイトリ選択肢ポイント初期化
$ウイトリ選択肢=0;

//▼選択肢：ウイ&トリBAD
//→▽腹が立つ
//→▽困惑する（ウイ&トリポイント＋１）

//■選択肢
	$select_fade=true;
	SetChoice02(" Get angry"," Get flustered");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm5381.nss";}
	else if($SetChoiceSelect==1){	$GameName = "dm5382.nss";$ウイトリ選択肢++;}

}
