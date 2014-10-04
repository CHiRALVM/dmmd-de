//<continuation number="0">
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


scene dm1162.nss_MAIN
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


scene dm1162.nss
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

//===========================================
//「自力でなんとかする」の場合
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	FadeDelete("上背景", 1000, null, true);}
I can't let myself be any more of a burden&.

{
	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,400,0,1200,null,false);
}
I sort of get myself to stand up on my own&.

But&.&.&.

{
	CreateSE("SE01","se人体_衝撃_叩く02");
	MusicStart("SE01",0,600,0,1300,null,false);
}
My legs are shaking&, and I end up holding onto Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm1170.nss"]

}
