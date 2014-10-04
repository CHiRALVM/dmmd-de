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


scene dm0835.nss_MAIN
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


scene dm0835.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//※前ファイル["dm0830.nss"]

//―――――――――――――――――――――――――――――――――――――――

	TextBoxDelete(0);
	SoundPlay("@dm015",0,450,true);

	PrintBG("上背景", 10000);
	EfRecoIn1(10001,200);

	CreateTextureSP("絵効果背景", 1050, 0, -141, "cg/ev/l/ev900ライム対戦蒼葉VS東江1_l.jpg");
	CreateTextureSP("絵背景100", 100, -512, -284, "cg/bg/m/bg104051_5_蒼葉宅居間_m.jpg");

	OnBG(10,"bg104051_5_蒼葉宅居間");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	EfRecoIn2(500);

//※以下、蓮ルートの時のみ表示
//-------------------------------------------


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Suddenly&, I remember everything I didn't speak with Granny about&.

I never talked about my fight with Toue in Rhyme&. 
But&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("絵効果*");

	EfRecoIn2(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Talking to her after all of that is hard&.

If she were to know that I was involved with Toue&, she'd 
worry even more&.

I feel guilty about not telling her everything&, but I 
don't want to make her even more anxious over me&.

&.&.&.I really don't want that&.

{
	Fw("fw蒼葉_通常_worry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3500010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3500020b03">
"What's wrong?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3500030a01">
"Nothing&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
In the end&, I didn't confess to Granny about my encounter 
with Toue&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,600,0,1200,null,false);

	Move("絵背景100", 500, @0, @50, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
After that&, she stands up from the sofa and takes 
something out from one of the shelves&.

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
[text0022]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3500040b03">
"Take this with you&. It's a new prescription for your
 headaches&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
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
[text0024]
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
[text0025]
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
[text0026]
I tightly grasp the medicine she gives me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


//----------------------------------------------
//※ここまで

	SetVolumeEX("@dm*", 3000, 0, null);
	ClearFadeAll(3000, true);

	Wait(1000);
}
