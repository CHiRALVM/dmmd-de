//<continuation number="60">
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


scene dm0682_vs.nss_MAIN
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
	$GameName = "dm0690_vs.nss";

}


scene dm0682_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg402041_1_立ち入り禁止区域工場通路");
	FadeBG(0,true);

//嶋：ＢＧＭ引き継ぎ注意
	SoundPlay("@dm009",0,450,true);

	FadeDelete("上背景", 0, null, true);

//==============================================
//※「ミンクに従う」を選んだ場合
//==============================================

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/8200010a01">
"Clear&, I'm counting on you! Do what Mink says!"

{
	St("C",740, @0,@0,"stミンク_通常_angry2");
	FadeSt("C",200,true);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/8200020a05">
"If you're as useless as you were last time&, I'll be in
 trouble&."

{
	DeleteAllSt(180,true);
	Fw("fwクリア_通常マスクあり_normal");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/8200030a04">
"Understood! If that's what you wish&, Master!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_打撃_風切り高01");
	MusicStart("SE01",0,700,0,700,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	FadeDelete("絵フラッシュ白", 100, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Another black-clothed man starts to come closer&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
//	FadeSt("C",200,true);

	Fw("fwクリア_通常マスクあり_normal");
	ClearComicNext(20001,68, 331,25,"ev");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/8200040a04">
"Ahhh! Please stoooop!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se擬音_打撃_ギャグヒット01");//あきゅん「ＳＥ：se擬音_打撃_ギャグヒット01」
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	DeleteAllSt(0,true);
	FadeDelete("絵フラッシュ白", 100, null,true);

	CreateSE("SE02","se人体_衝撃_転倒01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(500);

	St("C",740, @0,@0,"stミンク_通常_angry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/8200050a05">
"Hurry up and go&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/8200060a01">
"&.&.&.Sorry!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※次ファイル["dm0690_vs.nss"]

}
