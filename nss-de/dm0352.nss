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


scene dm0352.nss_MAIN
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
	$GameName = "dm0360.nss";

}


scene dm0352.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm006",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg104031_5_蒼葉宅自室消灯荒らし");
	FadeBG(0,true);

	St("C",740, @0,@0,"fuノイズ_通常_serious");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

//==============================================
//※「反撃する」を選んだ場合
//==============================================

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5200010a01">
"&.&.&.Give me a break!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE02","se戦闘_打撃_風切り低01");
	MusicStart("SE02",0,700,0,800,null,false);

	CreateColorSP("絵色白", 5000, "FFFFFF");
	DeleteAllSt(0,true);
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

	CreateSE("SE01","se戦闘_打撃_ヒット低01");
	MusicStart("SE01",0,700,0,800,null,false);
	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 10, 0, 0, 0, 500, null, true);
	Delete("絵板写");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I raise my knee to kick the man&.

{
	St("C",740, @0,@0,"fuノイズ_通常_serious");
	FadeSt("C",200,true);
}
But because of my awkward position&, the attack fails and 
he guards it with one hand&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/5200020a01">
"&.&.&.Ugh!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_衝撃_転倒01");//あきゅん「ＳＥ：se人体_衝撃_転倒01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景100", 100, Center, -500, "cg/bg/l/bg104031_5_蒼葉宅自室消灯荒らし_l.jpg");
	Move("絵背景100", 300, @0, -800, Dxl3, false);
	Fade("絵背景100", 300, 1000, null, true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
He pulls the leg he caught&, and I fall down sliding along 
the wall I was pressed against&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0360.nss"]

}
