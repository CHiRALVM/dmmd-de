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


scene dm1161.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1170.nss";

}


scene dm1161.nss
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

	CreateSurface("絵Suf",300,0,0,false);
	SetAlias("絵Suf", "絵Suf");
	SetSurface("@dm1160_プロセス洗脳*","絵Suf");
	SetBlur("絵Suf", true, 3, 50, 500, false);
	Fade("@dm1160_プロセス洗脳絵背景", 0, 1000, null, true);

	GoLoopFade("@dm1160_プロセス洗脳光",100);
	GoLoopFade2("@dm1160_プロセス洗脳レーザー",137);
	Request("@プロセスライト１", Start);

	FadeDelete("上背景", 0, null, true);

//===========================================
//「紅雀に頼る」の場合
//===========================================

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,400,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Koujaku helps me up by my arms&. 

But&.&.&. I can't stay up&. I'm losing myself again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm11/6100010a02">
"Guess it's impossible&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm1170.nss"]

}
