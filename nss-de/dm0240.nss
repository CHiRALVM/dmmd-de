//<continuation number="130">
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


scene dm0240.nss_MAIN
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
	#bg104051_5_蒼葉宅居間=true;
	#bg104011_5_蒼葉宅玄関消灯=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0250.nss";

}


scene dm0240.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg104011_5_蒼葉宅玄関");
	FadeBG(0,true);

	CreateSE("SE01","se擬音_水_シャワー01");
	MusicStart("SE01",1000,450,0,1000,null,true);

	Wait(2000);

	SetVolumeEX("SE01", 1000, 0, null);
	CreateSE("SE02","se擬音_水_シャワー閉める01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(2000);

	CreateSE("SE01","se物体_蒼葉宅玄関_扉開くゆっくり01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("上背景", 1000, null, true);

//※演出：蒼葉、風呂（不用？）
//※ＳＥ：シャワーの水音（不用？）
//※ＳＥ：水が止まる（不用？）
//※ＳＥ：蒼葉自宅_脱衣所扉開閉（ガラガラ）

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/4000010a01">
"&.&.&.Whew&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I take a shower after the meal and cover my half-wet hair 
with the towel on my shoulders and proceed to the living 
room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg104051_5_蒼葉宅居間");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I peep inside to see Granny watching TV while drinking 
tea&. Koujaku isn't there&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/4000020a01">
"Where's Koujaku?"

{	Fw("fwタエ_通常_normal");}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/4000030b03">
"He went upstairs&. He's probably in your room&."

{
//	SoundPlay("@dm013",0,450,true);
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/4000040a01">
"I see&. &.&.&.Ah&, by the way&, Granny&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/4000050b03">
"What?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/4000060a01">
"Whenever I have a headache I take my medicine like normal&, but lately it's not as effective as it used to be&."

{	Fw("fwタエ_通常_normal");}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/4000070b03">
"&.&.&.Hmmm&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Granny&, who was watching TV the whole time&, turns towards 
me&.

Granny told me to report anything regarding the headaches 
no matter what it is&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stタエ_通常_sad");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/4000080b03">
"It hasn't worked at all?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/4000090a01">
"Umm&, not like that&, but feels like it's not as effective
 as before&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stタエ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm02/4000100b03">
"Is that so? Then let's try changing the formula a bit&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/4000110a01">
"I'm counting on you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
When I bow deeply&, Granny snorts and returns to the TV&.

Well then&.&.&.
Apparently Koujaku is in my room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg104011_5_蒼葉宅玄関");
	FadeBG(1000,true);

	CreateSE("SE01","se物体_蒼葉宅階段_登る通常01");
	MusicStart("SE01",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
I leave the living room and go upstairs&.

Multiple places in my body throb in pain even when lifting 
only my foot&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg104011_5_蒼葉宅玄関.jpg");
	SetVolumeEX("SE*", 0, 0, null);
	CreateSE("SE01","se物体_蒼葉宅階段_登る通常01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 300, 0, 5, 0, 0, 500, Dxl3, true);
	SetVolumeEX("SE*", 0, 0, null);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/4000120a01">
"Ow&, ow&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Though there are no visible cuts or bruises&, the very 
core of my body posesses a dull ache&.

Is it because I took damage in Rhyme&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/4000130a01">
"Even though the fighting happened in my head&, it still
 hurts pretty badly&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
When I fought with that weird rabbit head&, Ren said that 
there was control over the damage level&.

Is that even possible?

I endure the pain&, make my way up the stairs&, and go into 
my room&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm0250.nss"]

}
