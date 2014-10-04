//<continuation number="20">
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


scene dm2301.nss_MAIN
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
	$GameName = "dm2310.nss";

}


scene dm2301.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg304081_5_東江タワー物置部屋");
	FadeBG(0,true);

	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

//===========================================
//「怒ってるように見える」の場合
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Wait&, is he&.&.&. angry?

Why would he be angry?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/0100010a03">
"You&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateTextureEX("絵背景", 200, Center, Middle, "cg/bg/bg304081_5_東江タワー物置部屋.jpg");
	Fade("絵背景", 0, 1000, null, true);

	CreateSE("SE01","se人体_動作_衣擦れ17");

	FwPro("fw蒼葉_通常_shock2",1750,"fw蒼葉_通常_pain");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/0100020a01">
"What? He-<?>
{	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 500, 2, 5, 0, 0, 1000, Axl2, false);
	FadeDelete("絵背景",500,null,false);}
	
&.&.&.Ow!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm2310.nss"]

}
