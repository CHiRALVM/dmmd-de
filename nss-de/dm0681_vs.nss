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


scene dm0681_vs.nss_MAIN
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


scene dm0681_vs.nss
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
//※「戸惑う」を選んだ場合
//==============================================

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/8100010a01">
"We should take all these guys down first&.&.&."

{	Fw("fwミンク_通常_angry4");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/8100020a05">
"&.&.&.Tch&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Mink clicks his tongue&, clearly irritated&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"stミンク_通常正面_angry2");
//	FadeSt("C",200,true);

	Fw("fwミンク_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/8100030a05">
"This isn't the time to bitch around&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

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

	ClearComicNext(20001,393,-22,26,"st");

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【クリア】※漫符：飛び汗
<voice name="クリア" class="クリア" src="voice/dm06/8100040a04">
"Ahhh! Please stoooop!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
	ClearComicNexDelete();

	CreateSE("SE01","se擬音_打撃_ギャグヒット01");//あきゅん「ＳＥ：se擬音_打撃_ギャグヒット01」
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	DeleteAllSt(0,true);
	FadeDelete("絵フラッシュ白", 100, null,true);

	CreateSE("SE02","se人体_衝撃_転倒01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(500);

	Fw("fwミンク_通常_angry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/8100050a05">
"Just hurry up and go&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/8100060a01">
"&.&.&.Got it!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※次ファイル["dm0690_vs.nss"]

}
