//<continuation number="40">
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


scene dm5381.nss_MAIN
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
	$GameName = "dm5390.nss";

}


scene dm5381.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm006",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg304041_5_東江タワー研究エリア研究室");
	FadeBG(0,true);

	DeleteAllSt(0,true);

	FadeDelete("上背景", 300, null, true);

//===========================================
//「腹が立つ」の場合
//===========================================

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("絵板写", 100);
	Shake("絵板写", 300, 20, 0, 0, 0, 1000, Dxl1, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8100010a01">
"&.&.&.That's not funny&, don't fuck with me!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I raise my voice&, violently struggling to get my arms free&.

They think of this as fun and amusing&.
What these two are saying is insane&.

I didn't think they were that kind of people&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",720, @0,@0,"stウイルス_通常バッヂ_normal");
	St("C",720, @0,@0,"stウイルス_通常バッヂ_serious");
	FadeSt("C",200,true);
	FadeStPro("C", 5550, 180);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8100020b04">
"You're quite persistent&. Could you stay quiet for us?
 &.&.&.Do it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteSt("C", 200,true);
	SetVolumeEX("@dm*", 100, 0, null);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵色白", 0, 1000, null, true);
	Wait(30);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg304041_5_東江タワー研究エリア研究室_m.jpg");
	Shake("絵背景", 300, 50, 50, 0, 0, 500, null, false);

	Fade("絵色白", 200, 0, null, true);

	Wait(300);

	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	Fade("絵色白", 200, 0, null, true);

	SoundPlay("@dm007a",0,450,true);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8100030a01">
"Guh-!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwウイルス_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8100040b04">
"Just enough so he doesn't die&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5390.nss"]

}
