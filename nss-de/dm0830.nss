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


scene dm0830.nss_MAIN
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

	#bg107021_1_病院病室前=true;
	#bg107011_1_病院個室=true;
	#ev083蒼葉病院着=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	if($DM_ROUTE==5){	$GameName = "dm0835.nss";
	}else {		$GameName = "dm0836.nss";
	}

}


scene dm0830.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	TextBoxDelete(0);
	PrintBG("上背景", 30000);

	OnBG(10,"bg104051_5_蒼葉宅居間");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Once everyone leaves&, Granny stands up and goes inside the living room&.

She sits down and takes a long&, deep breath&.

I walk up to join her&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SoundPlay("@dm012",1000,450,true);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3000010a01">
"&.&.&.Granny&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000020b03">
"What?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3000030a01">
"Can we talk a little more?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景100", 100, -512, Middle, "cg/bg/m/bg104051_5_蒼葉宅居間_m.jpg");
//	Move("絵背景100", 0, @0, @-90, null, true);

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1200,null,false);

	Move("絵背景100", 1000, @0, @-140, Dxl1, false);
	Fade("絵背景100", 1000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
She doesn't answer me&, but I go and sit next to her&.

There are so many things I want to talk about&. But&.&.&. I 
don't know what I should say first&.

My mind's in a frenzy&, and I can't seem to hold onto 
thoughts&.

I stare at my hands on my knees&, and open my mouth while 
thinking&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3000040a01">
"You know&, I&.&.&. always make you worry about me&, and I don't know a lot about stuff&. I'm sorry&, while you were talking  earlier&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_sigh");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000050b03">
"You're sounding stupid&."

{
	SoundPlay("@dm015",0,450,true);
	Fw("fwタエ_通常_sad");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000060b03">
"Aoba&, there's never been a day that's passed by when I'm
 not thankful for your safety&."

{	Fw("fwタエ_通常_smile");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000070b03">
"You're my responsibility&.&.&. because I'm your crusty old
 grandmother&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3000080a01">
"Granny&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Granny sits silently and stares at me for a few moments&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000090b03">
"&.&.&.You said that you remembered participating in Rhyme&,
 right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3000100a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SoundPlay("@dm006",0,450,true);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000110b03">
"A long time ago&, you had to go to the hospital because of
 an incident in Rhyme&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3000120a01">
"Huh? An incident in Rhyme?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000130b03">
"Yeah&. Only now can I say it to you&. When I rushed up to
 you back then&, you didn't remember anything&. Both the
 doctors and the police told me you were caught up in a
 bad fight&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fwタエ_通常_sigh",5900,"fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000140b03">
"That you were beat up really bad&, and that you were
 suffering from temporary memory loss&.&.&. And then the
 day when I visited&, something happened&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 6000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);

	CreateTextureSP("絵背景190", 190, -1022, -572, "cg/bg/l/bg107011_1_病院個室_l.jpg");
	CreateTextureSP("絵背景200", 200, Center, Middle, "cg/bg/bg107021_1_病院病室前.jpg");

	CreateColorSP("回想色", 5000, "#624a2b");
	Request("回想色", OverlayRender);
	CreateTextureSPmul("回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");

	Wait(1000);
	FadeDelete("絵色黒", 1000, null, true);

//※回想シーン
//※場所：病院の個室、昼。
//※婆ちゃん、病室のドアをトントンと叩いて開ける。

	CreateSE("SE01","se物体_ドア木_ノック01");
	MusicStart("SE01",0,700,0,1400,null,false);

	Wait(1000);

	CreateSE("SE01","se物体_蒼葉自室窓_開閉01");
	MusicStart("SE01",0,1000,0,800,null,false);

	DrawDelete("絵背景200", 500, 100, null, "slide_01_00_1", true);
	SetVolumeEX("SE*", 1000, 0, null);

	Wait(1000);

//	Fw("fwタエ_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000150b03">
"Aoba?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵ＥＶ500", 500, 0, InBottom, "cg/ev/m/ev083蒼葉病院着_m.jpg");

	Move("絵画像500", 1000, @0, @50, Dxl1, false);
	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

//	Fw("fwタエ_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000160b03">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	Move("絵ＥＶ500", 1700, -100, 0, Dxl1, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm08/3000170b01">
"Are you surprised?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwタエ_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000180b03">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ500", 1500, -200, 0, Axl3, false);
	Wait(1000);
	FadeDelete("絵ＥＶ500", 500, null, true);

	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,1200,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");

	Wait(500);

//※蒼葉、どさっとその場に倒れて気絶する
//	Fw("fwタエ_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000190b03">
"&.&.&.Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(800);

//※回想終わり

	CreateColorEX("絵色黒", 6000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);

	Delete("回想*");
	Delete("絵ＥＶ*");
	Delete("絵背景190");

	FadeDelete("絵色黒", 1000, null, true);

//※以下にタエの台詞を１ワード追加

	Fw("fwタエ_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000191b03">
"At that time&, there was a nurse collapsed on the floor
 next to you&.&.&."

//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000200b03">
"And for two days after that&, you continued to sleep&. The
 nurse who had fainted said she remembered nothing&." 

{	Fw("fwタエ_通常_normal2");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000210b03">
"I went into your room to inspect some things&, and it
 seemed that when you had woken up&, you had lost your
 memory&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3000220a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000230b03">
"You've been having those headaches ever since&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3000240a01">
"I&.&.&. remember that&. After that&, my memories came back&.
 They were still fuzzy&, though&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000250b03">
"That nurse was lightly affected by Scrap&. You entered her
 consciousness and destroyed part of her memory&."

{	Fw("fwタエ_通常_sigh");}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000260b03">
"The headaches&, Scrap&, the personality change&.&.&.I knew that danger was sure to reapppear again&, so I prescribed you
 medicine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000270b03">
"As you began to become more stable&, I guess it was as if I suppressed the power there&. And as a result&, didn't your
 headaches also fade away?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3000280a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000290b03">
"The medicine losing its effect might mean that you're
 having a reaction to the drugs forcing the power down&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3000300a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fwタエ_通常_shock",9250,"fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000310b03">
"Scrap's main principle is destruction&. To kill&, to bring
 ruin&.&.&. But the use of such a thing can change on how and
 for what reason you use it for&."

{
	Fw("fwタエ_通常_normal");
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000320b03">
"And that's why I want you to face it by yourself now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//演出メモ：※あとから回想される（千代子）
//"dm5330.nss"

	Fw("fwタエ_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000330b03">
"And never stop&, no matter what happens&. Just believe in
 your own choices along the way and keep pushing forward&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Wait(500);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
Speaking with fervor&, Granny takes both of my hands and 
grips them tightly&.

Her hands are warm and soft&.
This is the warmth of my gentle Granny&.

It's the warmth of someone important to me&, someone who's 
always watched over me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3000340a01">
"Granny&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000350b03">
"Hm?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3000360a01">
"I'll definitely come back&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000370b03">
"&.&.&.Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
She nods her head and gives me a tiny smile&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//以下dm0836&.nnsへ移動（千代子）
/*
After that&, she stands up from the sofa and takes something out from one of the shelves&.

//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000380b03">
"Take this with you&. It's a new prescription for your headaches&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3000390a01">
"Thanks&."

//【タエ】
<voice name="タエ" class="タエ" src="voice/dm08/3000400b03">
"Make sure to hold onto it&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/3000410a01">
"Okay&."

I tightly grasp the medicine she gives me&.
*/

//	TextBoxDelete(0);

//※次ファイル["dm0835.nss"]蓮ルートのみ表示
//※次ファイル["dm0836.nss"]蓮ルート以外で表示

}
