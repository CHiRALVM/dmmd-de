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


scene dm1160sl.nss_MAIN
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


scene dm1160sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	//おがみ：BGM：切ない系
	SoundPlay("@dm012",0,450,true);

	OnBG(10,"bg303021_5_娯楽施設クラブフロア");
	FadeBG(0,true);

//マクロ・プロセス始動：スキップ対応用==========================
	CreateSurface("絵Suf",300,0,0,false);
	SetAlias("絵Suf", "絵Suf");
	SetSurface("@dm1160_プロセス洗脳*","絵Suf");
	SetBlur("絵Suf", true, 3, 50, 500, false);
	Fade("@dm1160_プロセス洗脳絵背景", 0, 1000, null, true);

	GoLoopFade("@dm1160_プロセス洗脳光",100);
	GoLoopFade2("@dm1160_プロセス洗脳レーザー",137);
	Request("@プロセスライト１", Start);

	Delete("上背景");
//マクロ・プロセス始動：スキップ対応用==========================


//▼選択肢：紅雀
//→▽紅雀に頼る（紅雀ポント＋１）
//→▽自力でなんとかする


//■選択肢
	SetChoice02(" Rely on Koujaku"," Take care of yourself");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm1161.nss";$紅雀選択肢5=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm1162.nss";$紅雀選択肢5=0;}

}
