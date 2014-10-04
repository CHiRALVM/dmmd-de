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


scene dm2440sl00.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		//call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

//◆ノイズ特殊選択肢◆//
$ノイズ選択肢8=0;
//※ノイズの質問ループスタート
//ループカウント初期化
$ノイズループ=0;
//ＭＡＸループ出し
$ノイズループ数=3-$ノイズ選択肢5-$ノイズ選択肢6-$ノイズ選択肢7;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2440sl01.nss";

	TextBoxDelete(0);

}



//※例（あとでもっと良い問題あったら差し替えます）


//※次ファイル["dm2440sl01.nss"]

