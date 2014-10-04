//<continuation number="140">
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


scene dm4560.nss_MAIN
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
	$GameName = "dm4570ed.nss";

}


scene dm4560.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

//※演出：画面暗転／場面転換

	PrintBG("上背景", 30000);

	OnBG(10,"bg101051_5_旧住民区通り裏路地06");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

	CreateSE("SE01","se物体_ドア_鍵回す02");
	MusicStart("SE01",0,700,0,800,null,false);

	Wait(1000);

	SoundPlay("@dm002",0,450,true);

	St("C",740, @0,@0,"stタエ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm45/6000010b03">
"&.&.&.How is it?"

{
	Fw("fwm博士_通常_normal");
}
//【研究員】
<voice name="研究員" class="研究員" src="voice/dm45/6000020e26">
"Well&.&.&. I think it will be fine now&."

{
	St("C",740, @0,@0,"stタエ_通常_normal");
	FadeSt("C",200,true);
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm45/6000030b03">
"Hmph&."

{
	Fw("fwm博士_通常_normal");
}
//【研究員】
<voice name="研究員" class="研究員" src="voice/dm45/6000040e26">
"But I was very surprised&. The brain circuit damage was at
 98%! Usually you would just dispose of something like
 this&."

//【研究員】
<voice name="研究員" class="研究員" src="voice/dm45/6000050e26">
"A recovery from that point&.&.&. I couldn't do it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stタエ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm45/6000060b03">
"It took me half of a year&, and all I did is thoroughly
 repair the base&. From there the implantation was all in
 your hands&."

{
	Fw("fwm博士_通常_normal");
}
//【研究員】
<voice name="研究員" class="研究員" src="voice/dm45/6000070e26">
"No&, that half a year's work was miraculous in itself!"

{
	St("C",740, @0,@0,"stタエ_通常_sigh");
	FadeSt("C",200,true);
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm45/6000080b03">
"Hm&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm博士_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【研究員】
<voice name="研究員" class="研究員" src="voice/dm45/6000090e26">
"Even so&, the implantation foundations were comparitively
 in beautiful condition&, so that was great&. And it was of
 the same series&, so work went along smoothly&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	St("C",740, @0,@0,"stタエ_通常_shock");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm45/6000100b03">
"Toue mass produced them like an idiot would&. He was going
 to release them in hordes&, it makes me shiver thinking
 about it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm博士_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【研究員】
<voice name="研究員" class="研究員" src="voice/dm45/6000110e26">
"Very true&.&.&. Well then&, let's do a start up test here&."

{
	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fwm博士_通常_normal");
}
//【研究員】
<voice name="研究員" class="研究員" src="voice/dm45/6000120e26">
"&.&.&.Eh!?"

{
	St("C",740, @0,@0,"stタエ_通常_normal");
	FadeSt("C",200,true);
}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm45/6000130b03">
"What's wrong?"

{
	Fw("fwm博士_通常_normal");
}
//【研究員】
<voice name="研究員" class="研究員" src="voice/dm45/6000140e26">
"Th-That&.&.&. I'm pretty sure it was just resting here a
 moment before&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	ClearFadeAll(3000, true);

//※次ファイル["dm4570ed.nss"]

}
