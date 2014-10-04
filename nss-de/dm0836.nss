//<continuation number="410">
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


scene dm0836.nss_MAIN
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
	$GameName = "dm0840.nss";

}


scene dm0836.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//※前ファイル["dm0830.nss"]

//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm015",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg104051_5_蒼葉宅居間");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -512, -284, "cg/bg/m/bg104051_5_蒼葉宅居間_m.jpg");

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{
	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,600,0,1200,null,false);

	Move("絵背景100", 500, @0, @50, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);
}
Once she got up from the sofa&, she took something out from one of the shelves&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※頭痛薬のケースの音
	CreateSE("SE01","se物体_ピルケース_ふる01");
	MusicStart("SE01",0,700,0,1500,null,false);

	Wait(500);

	St("C",740, @0,@0,"stタエ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000380b03">
"Take this with you&. It's a new prescription for your
 headaches&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3000390a01">
"Thanks&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stタエ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3500060b03">
"Make sure you hold onto it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3000410a01">
"Okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]
I tightly grap the medicine she gives to me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm0835.nss"]蓮ルートのみ表示
//※次ファイル["dm0840.nss"]


	SetVolumeEX("@dm*", 3000, 0, null);
	ClearFadeAll(3000, true);

	Wait(1000);

}
