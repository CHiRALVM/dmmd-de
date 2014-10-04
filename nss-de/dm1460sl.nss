//<continuation number="10">
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


scene dm1460sl.nss_MAIN
{
$TEXTBOX_TYPE="";//暴露
//■超速設定なし


	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	//#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	//
	

}


scene dm1460sl.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);
	CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev145紅雀妄想の蒼葉.jpg");
	FadeDelete("上背景", 0, null, true);
	//Fade("@boxH*", 0, 0, null, true);
	DrawTransition("@boxH*", 1000, 1000, 0, 100, null, "cg/data/blind_01_01_0.png", true);



	$express_logS1=#SYSTEM_skip_express;
	$skip_logS1=$SYSTEM_skip;
	$auto_logS1=$SYSTEM_text_auto;

//選択肢手前でクイックセーブ、選択肢に戻った時にはしないフラグ
$quick_save_once1460=1;

$WHILEIN=1;
while($WHILEIN==1)
{

	if(!$エキストラタイトル){
		Save(9999);
	}

		PrintBG("上背景", 30000);
	
		CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev145紅雀妄想の蒼葉.jpg");
	
	$ANS_STR="Do Not Give In ";
	$ANS_TXT="未";
		S1SetChoiceBase();
	
	
		FadeDelete("上背景", 0, null, true);
	

//※言葉を入力する（正解：負けるな）
//※ここでの入力を間違えた場合はバッドエンドへ

	S1WaitChoice();


/*
//ボイスタグ番号不明、セリフと２択は本番のテキスト入れてください（千代子
//12/12ボイスタグ追加しました（深堀

■入力確認

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6000020a01">
"Is this really okay?"

*/

	$SYSTEM_skip=false;
	#SYSTEM_skip_express=false;
	$SYSTEM_text_auto=false;
	$SYSTEM_skip_lock=true;


	CreateVOICEEX("vc蒼葉","dm14/6000020a01","蒼葉");
//	MusicStart("vc蒼葉",0,1000,0,1000,null,false);//#SYSTEM_sound_volume_voice
	Fade("@boxH*", 0, 0, null, true);
	DrawTransition("@boxH*", 0, 0, 1000, 100, null, "cg/data/blind_01_01_0.png", true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//<voice name="蒼葉" class="蒼葉" src="voice/dm14/6000020a01">
{SetVolume("vc蒼葉", 0, 1000, null);
Request("vc蒼葉", Play);
Request("vc蒼葉", Disused);
}
「 <VALUE name=$ANS_TXT>」

//【蒼葉】
//<voice name="蒼葉" class="蒼葉" src="voice/dm14/7000010a01">
//"...Don't give in."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
//『<VALUE name=$ANS_NTH>』


/*
■入力確認後の２択

これでいいはずだ
もう少し考えよう

*/
	//■選択肢
	$select_fade=true;
	SetChoice02("This should be fine","Think harder");
	WaitChoice02();

	if($SetChoiceSelect==0){		$WHILEIN=0;}
	else if($SetChoiceSelect==1){	$WHILEIN=1;}

}


	$SYSTEM_skip_lock=false;
	if(#keep_auto_and_skip){
		if($express_logS1){
			#SYSTEM_skip_express=$express_logS1;
		}

		if($skip_logS1){
			$SYSTEM_skip=true;
		}else if($auto_logS1){
			$SYSTEM_text_auto=true;
		}
	}


/*
$select_fade=true;
SetChoice02("成功","失敗");
WaitChoice02();
if($SetChoiceSelect==0){		$ANS_TXT=$ANS_STR;}
else if($SetChoiceSelect==1){	$ANS_TXT=$ANS_STR+1;}
*/

	if($ANS_TXT==$ANS_STR){	$GameName = "dm1470scr.nss";$紅雀選択肢8=1;}
	else{$GameName = "dm1461.nss";$紅雀選択肢8=0;}

//	ClearFadeAll(1000, true);


	if($紅雀選択肢8==1){
		CreateColorEXadd("絵色白", 5000, "FFFFFF");
		Fade("絵色白", 1000, 1000, null, true);
	}else{
	}

}
