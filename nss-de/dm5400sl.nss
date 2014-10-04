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


scene dm5400sl.nss_MAIN
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


scene dm5400sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg304041_5_東江タワー研究エリア研究室");
	FadeBG(0,true);

	St("ML",720, @0,@0,"stウイルス_通常バッヂ_normal");
	St("MR",700, @0,@0,"stトリップ_通常バッヂ_normal");
	FadeAllSt(0,true);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 0, 800, null, true);

	FadeDelete("上背景", 0, null, true);

//▼選択肢：ウイ&トリBAD
//→▽もう抵抗する気力もない（ウイ&トリポイント＋１）
//→▽それでも諦めない


//■選択肢
	$select_fade;
	SetChoice02(" I don't have the energy to hold out"," Continue to resist");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm5401.nss";$ウイトリ選択肢++;}
	else if($SetChoiceSelect==1){	$GameName = "dm5402.nss";}

}
