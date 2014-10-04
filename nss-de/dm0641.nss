//<continuation number="70">
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


scene dm0641.nss_MAIN
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
	$GameName = "dm0650_vs.nss";

}


scene dm0641.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, -515, -485, "cg/bg/l/bg402021_1_立ち入り禁止区域工場外観_l.jpg");

	FadeDelete("上背景", 0, null, true);


//==============================================
//※「ノイズの隣に並ぶ」を選んだ場合
//==============================================

//あきゅん「↓：ノイズはアナログ好きだからカタカタ音がなるように設定してるんだよ」
	CreateSE("SE02","se物体_パソコン_キーボード操作01");
	MusicStart("SE02",3000,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I approach Noiz and take a look at his hands&.

He doesn't take a single look away from the monitor&, and 
keeps typing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 200, 0, null);

	Fw("fwノイズ_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/4100010a03">
"&.&.&.What?"

{	Fw("fw蒼葉_通常_confuse");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/4100020a01">
"&.&.&.Nothing&, I just was wondering how you were doing&."

{	Fw("fwノイズ_通常_normal2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/4100030a03">
"So you don't trust me?"

{	FwPro("fw蒼葉_通常_worry4",3700,"fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/4100040a01">
"It's not that&. I'm just nervous&.&.&. Sorry for bothering
 you when you're so focused&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fwノイズ_通常_cool2",3300,"fwノイズ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/4100050a03">
"I'm not gonna screw up&, so whatever&. Don't blow it when
 we're out there&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/4100060a01">
"&.&.&.I know&."

{	Fw("fwノイズ_通常_normal3");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/4100070a03">
"Do you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
&.&.&.How uncute&.

But it was my fault for interrupting him in the first 
place&. Without saying another word&, I left&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0650_vs.nss"]

}
