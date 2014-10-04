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


scene dm0840.nss_MAIN
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
	#bg104031_5_蒼葉宅自室消灯=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	if($DM_ROUTE==1){	$GameName = "dm0841.nss";
	}else if($DM_ROUTE==2){	$GameName = "dm0842.nss";
	}else if($DM_ROUTE==3){	$GameName = "dm0843.nss";
	}else if($DM_ROUTE==4){	$GameName = "dm0844.nss";
	}else if($DM_ROUTE==5){	$GameName = "dm0845.nss";
	}else if($DM_ROUTE_SEL[0]>1){	$GameName = "dm0840sl.nss";
	}else{$GameName = "dm0840sl.nss";}
}


scene dm0840.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//※前ファイル["dm0835.nss"]蓮ルートのみ表示
//※前ファイル["dm0836.nss"]蓮ルート以外表示

//―――――――――――――――――――――――――――――――――――――――

	TextBoxDelete(0);

	PrintBG("上背景", 30000);

	Wait(1000);

	OnBG(10,"bg104031_5_蒼葉宅自室消灯");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -109, -680, "cg/bg/l/bg104031_5_蒼葉宅自室消灯_l.jpg");
	CreateTextureSP("絵背景101", 101, -109, 0, "cg/bg/l/bg104031_5_蒼葉宅自室消灯_l.jpg");

	FadeDelete("上背景", 1000, null, true);

//※どの攻略キャラのところへ行くかによって途中で分岐するイベント
//→dm0821～dm0824のこと（千代子）

//※時間経過

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I go back to my room&, flop onto my bed&, and stare at the 
ceiling&.

The only thing that runs through my head is what Granny 
said&. I don't feel like sleeping at all&.

How Mizuki and his group was manipulated by Morphine&.

How Granny was actually a researcher for Toue once&.

Toue's real intentions&.

How I remembered that I participated in Rhyme before&.

About my power&, Scrap&.

And how I&.&.&. might have broken Mizuki beyond repair&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝返り");
	MusicStart("SE01",0,700,0,800,null,false);

	Move("絵背景100", 1000, @0, -595, Dxl1, false);
	Move("絵背景101", 1000, @0, @-100, Dxl1, false);
	FadeDelete("絵背景101", 1000, null, true);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0019]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
No matter how many times I roll around in my sheets or let out deep sighs&, the heavy feeling never goes away&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	SoundPlay("@dm006",0,450,true);

	CreateSE("SE01","se擬音_回想_フラッシュバック02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写１", 10000);

	CreateTextureSP("回想1000", 1000, Center, Middle, "cg/ev/ev071ミズキ苦しむ.jpg");

	CreateColorSP("回想色", 5000, "#624a2b");
	Request("回想色", OverlayRender);

	CreateTextureSPmul("回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");

	FadeDelete("絵板写１", 500, null, true);

	Wait(30);

	CreatePlainSP("絵板写２", 10000);
	Delete("回想*");
	FadeDelete("絵板写２", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
I really did that to Mizuki&.&.&.

If only I'd listened to what Mizuki had to say back there&, I might've been able to save him&.

That's what Granny said&.

But I wasn't able to do that&.

Even if I didn't know&.&.&. I still can't forgive myself&.

My one action changed Mizuki forever&.

I can't&.&.&.
I can't believe it&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
&.&.&.&.&.

I look up to the ceiling and pound my face into my pillow&.

An uneasy feeling in my arms suddenly surfaces and won't 
seem to fade away at all&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/4000020a01">
"&.&.&.Damn it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 2000, 0, null);

	DeleteFw();

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景100", 500, @0, @50, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
&.&.&.I don't want to think about this alone anymore&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0841.nss"]紅雀ルートのみ表示
//※次ファイル["dm0842.nss"]ノイズルートのみ表示
//※次ファイル["dm0843.nss"]ミンクルートのみ表示
//※次ファイル["dm0844.nss"]クリアルートのみ表示
//※次ファイル["dm0845.nss"]蓮ルートのみ表示
//※次ファイル["dm0840sl.nss"]キャラポイント競合がある場合表示
//<A HREF="dm0850.nss" OPERATOR="">//※次ファイル["dm0850.nss"]保険

}
