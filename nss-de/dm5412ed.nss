//<continuation number="530">
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


scene dm5412ed.nss_MAIN
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
	#ev541ウイルストリップED前戯=true;
	#ev541ウイルストリップED挿入=true;
	#ev541ウイルストリップED挿入a=true;
	#ev541ウイルストリップED挿入b=true;
	
	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm9999.nss";


	if($RECRIB_PLAY==1){//回想モード中
		$GameName = "";
		$GameCircle=false;
	}else{
	//★エンドロール
	PreSetRoll(7);
	TheEND(7);
}

#BDED6=1;//ウイトリバッドエンドフラグ取得
	#RECLIB09=1;//回想用フラグ取得

}


scene dm5412ed.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg304171_5_東江タワーウイルス自室");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -1492, -406, "cg/bg/l/bg304171_5_東江タワーウイルス自室_l.jpg");
	Zoom("絵背景100", 0, 1800, 1800, null, true);
	Request("絵背景100", Smoothing);

	Delete("上背景");
	if($RECRIB_PLAY==1){Wait(1000);}//回想時

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.&.&.

&.&.&.My eyelids are heavy&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(1000);

	DrawTransition("絵色黒", 500, 1000, 800, 100, null, "cg/data/slide_05_00_0.png", true);
	Wait(300);
	DrawTransition("絵色黒", 500, 800, 1000, 100, null, "cg/data/slide_05_00_0.png", true);
	Wait(1500);
	DrawTransition("絵色黒", 2000, 1000, 0, 100, null, "cg/data/slide_05_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
When I slowly open my eyes&, I see Virus' face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwウイルス_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200010b04">
"Good morning&, Aoba-san&."

{
	Fw("fwトリップ_通常_normal");
}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/1200020b09">
"Good morning&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200030a01">
"&.&.&."

Good morning&, Aoba-san&.

The words take a little while to process through my dizzy 
head&.

Oh&.

It's a greeting&.&.&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);
}
Sitting on the bed&, Virus brushes his hand along my 
stretched out&, naked body&, all the way to my chest&.

By my feet&, Trip brushes along my stomach and legs&.

{
	CreateSE("SE02","se人体_動作_衣擦れ08");
	MusicStart("SE02",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200040a01">
"&.&.&.Ngh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	FadeDelete("絵背景100", 1000, null, true);

	Wait(500);

	Fw("fwウイルス_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200050b04">
"How long has it been since we've whisked you away? Maybe
 half a year?"

//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200060b04">
"We've been extremely loving&, locking you away in this
 room&. At first you struggled&, but now you're completely&.&.&. Isn't he?"

{
	Fw("fwウイルス_通常_think");
}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200070b04">
"It was even necessary to keep a choker on you just until
 a little whle ago&, but that doesn't seem to be the case
 anymore&."

{
	Fw("fwウイルス_通常_normal");
}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200080b04">
"People really do have amazing adaptability&. Isn't that
 what we've always said?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwトリップ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/1200090b09">
"You become like this even if we just touch you now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	CreateSE("SE02","se擬音_水_はねる04");
	MusicStart("SE02",0,350,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
At just the touch of Trip's fingers&, I instantly become 
hard&. A sweet&, numbing feeling runs through me&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200100a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwウイルス_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200110b04">
"Heh&, how cute&. You two&, show Aoba some love as well&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_鳴る01");
	MusicStart("SE01",0,400,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ02");
	MusicStart("SE02",0,700,0,700,null,false);

	CreateTextureEX("絵ＥＶ110", 110, -1024, -0, "cg/ev/l/ev541ウイルストリップED前戯_l.jpg");
	Move("絵ＥＶ110", 1000, -958, -208, Dxl1, false);
	Fade("絵ＥＶ110", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
When Virus says that&, the bed creaks and a black lion 
comes up&. It's Trip's Allmate&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se動物_声_ライオン唸る01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(1000);
	CreateSE("SE02","se擬音_水_はねる03");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("絵ＥＶ110", 1000, -685, -314, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
The lion aligns his body with mine&, and starts to lick 
down my chest with his large&, rough tongue&.

As gently as it tries to lick&, its rough tongue still 
hurts as it rubs on my skin&.

But the stimulus from it&.&.&. is still too much for me 
to handle&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200120a01">
"Ah! &.&.&.No&.&.&. Haa&.&.&."

//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200130b04">
"Haha&, looks like it feels good&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE02","se擬音_水_はねる05");
	MusicStart("SE02",0,500,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Virus scoops up some of the lion's saliva with his fingers and smears it onto my nipples&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ13");
	MusicStart("SE01",0,600,0,1200,null,false);

	CreateSE("SE02","se擬音_水_はねる04");
	MusicStart("SE02",0,400,0,1400,null,false);

	CreateTextureEX("絵ＥＶ111", 111, -1024, -800, "cg/ev/l/ev541ウイルストリップED前戯_l.jpg");
	Move("絵ＥＶ111", 1000, -825, -800, Dxl1, false);
	Fade("絵ＥＶ111", 1000, 1000, null, true);
	Delete("絵ＥＶ110");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200140a01">
"Ahh&.&.&. Ha&.&.&. Mn&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
Next comes a soft slithering noise&, and this time 
something coils around the lower half of my body&.

It's Virus's Allmate&.&.&. a black snake&.

Its wet scales graze my thigh and cock&, that alone making 
me shiver in excitement&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Its slender&, forked tongue flickers and starts to lick at 
the base of my thigh&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵ＥＶ111", 1000, -602, -539, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200150a01">
"Nghahh&.&.&. Ah&, haa&.&.&.&.!"

//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/1200160b09">
"You're already ready to be entered over here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ07");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE02", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Trip suddenly sinks two of his fingers into my asshole&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se擬音_水_はねる06");
	MusicStart("SE01",0,600,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200170a01">
"Nnahhh! Ah&.&.&.Ahh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
Before&, this used to be so painful&.

But now my body easily sucks in Trip's fingers&.

These two have continued to violate me in any way possible&.

At some point&, whatever they did to me just "felt good&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Just with a bit of groping&, an intense pleasure runs 
through me&.

Even now&.&.&. While fingers sloppily move around my ass&, I'm just about to come&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,500,0,1000,null,false);

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,600,0,1200,null,false);

	Move("絵ＥＶ111", 500, @0, @-150, Dxl1, false);

	CreateTextureEX("絵ＥＶ112", 112, Center, Middle, "cg/ev/ev541ウイルストリップED前戯.jpg");
	Fade("絵ＥＶ112", 500, 1000, null, true);
	Delete("絵ＥＶ111");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200180a01">
"&.&.&.Ah! &.&.&.&.Ugah&.&.&. Ah&.&.&.!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/1200190b09">
"Oh my&, you came&."

//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200200b04">
"Then I guess we'll have to enjoy ourselves as well&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵ＥＶ*", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200201a01">
"Ah&, haa&.&.&. Haa&.&.&.Ngh&.&.&. Fu&.&.&.!"

Virus lifts up my completely exhausted body&, sitting 
himself up across from me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_抱く01");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
He takes out his cock&, then picks me up from both 
sides with his hands&.

&.&.&.My body throbs&, knowing what's coming next&.

As they had expected&, my asshole which had been stirred up by Trip's fingers was pushed into by a hot dick&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("絵ＥＶ120", 120, -1024, -574, "cg/ev/l/ev541ウイルストリップED挿入_l.jpg");
	Move("絵ＥＶ120", 1000, -841, -36, Dxl1, false);
	Fade("絵ＥＶ120", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200210a01">
"Ahhhhhh&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
A loud moan escapes me as he puts it in too forcibly&.
But there wasn't any pain&.

It was suffocating as my insides were pried open&, but soon enough a sweetness filled me between the hips&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200220a01">
"Ah&, ah&, haa&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
I cling to Virus's neck without thinking&, and soon feel 
Trip on my back&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/1200230b09">
"I want to try something different than the usual today&."

//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200240b04">
"Sure&.&.&. Go ahead&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200250a01">
"&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝返り");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
Trip takes both of his hands and strokes the line of my 
back&, sliding his hands down my thigh to my knees&. 

With a jerk&, he raises me up&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,900,null,false);

	CreateTextureEX("絵ＥＶ121", 121, 0, -325, "cg/ev/l/ev541ウイルストリップED挿入_l.jpg");
	Move("絵ＥＶ121", 500, 0, -403, Dxl1, false);
	Fade("絵ＥＶ121", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200260a01">
"Hii&.&.&.!? No&, don't put&.&.&.! Ugah&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,900,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Taking in Virus was already more than enough for me&.&.&.
But Trip's swelling dick is making its way in too&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ07");
	MusicStart("SE02",0,700,0,900,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200270a01">
"Ah&.&.&.Ahhhh&.&.&.! Fu&.&.&."

{
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,900,null,false);

	Move("絵ＥＶ121", 1000, 0, -130, Dxl3, true);
	Delete("絵ＥＶ120");
}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/1200280b09">
"&.&.&.I think it'll go in- oh&."

//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200290b04">
"Hurry up&, I'm waiting over here&."

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1200,null,false);

	Move("絵ＥＶ121", 1000, -253, -84, Dxl1, true);
}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/1200300b09">
"Move over a little so I can get in&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200310b04">
"Don't ask for the impossible&."

{
	CreateSE("SE01","se人体_動作_衣擦れ21");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se擬音_水_はねる04");
	MusicStart("SE02",0,500,0,1400,null,false);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200320a01">
"Ugh&.&.&.Kuh&, ahhhh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
I thought it'd be entirely impossible&.&.&. But Trip's dick 
enters me little by little&.

And with each movement&, I feel as if I could hear my 
insides tearing apart&.

As the painful shredding continues&, tears and saliva drip 
down as I cling to Virus&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ10");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ122", 122, -191, -280, "cg/ev/m/ev541ウイルストリップED挿入_m.jpg");
	Move("絵ＥＶ122", 1000, -191, -18, Dxl1, false);
	Fade("絵ＥＶ122", 1000, 1000, null, true);
	Delete("絵ＥＶ121");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200330a01">
"Guh&.&.&. Ow&.&.&. Ha&, ah&.&.&.!"

//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/1200340b09">
"Just a little more&.&.&."

//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200350b04">
"Ngh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ07");
	MusicStart("SE02",0,500,0,1000,null,false);

	Move("絵ＥＶ122", 500, -191, -88, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200360a01">
"Ugh&.&.&."

//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/1200370b09">
"&.&.&.It's in&. Pretty much&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
Trip's breaths touch my back&. 
It hurts&, but I still trembled&.

I have both my legs held up from behind me&, so I can't do 
anything myself&.

And because my body weight is evened out&, they're even 
deeper inside of me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
It hurts&, it's hot&, and it's suffocating&.&.&. 
But I can't tell which is which anymore&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200380b04">
"&.&.&.Aoba-san&, we're moving&."

//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/1200390b09">
"Aoba's so adorable when he's in pain&."

//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200400b04">
"Haha&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se擬音_水_はねる06");
	MusicStart("SE02",0,500,0,900,null,false);

	CreateSE("SE01","se人体_動作_衣擦れ22");
	MusicStart("SE01",0,600,0,1400,null,false);

	CreateTextureEX("絵ＥＶ123", 123, -332, -402, "cg/ev/l/ev541ウイルストリップED挿入_l.jpg");
	Move("絵ＥＶ123", 500, -489, -257, Dxl1, false);
	Fade("絵ＥＶ123", 500, 1000, null, true);
	Delete("絵ＥＶ122");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200410a01">
"Ii&.&.&. Ugah&, kuh&.&.&. Ah&, ha&.&.&.!"

The two screw me in a fever&, and my sight becomes stained 
with red&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
The blood is streaming throughout my body&, and it feels 
like it's going to burst out through my throat along with 
my voice&.

But still&.&.&. my body reacts&.

My dick firmly swells&, sweat and secretion dripping down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ10");
	MusicStart("SE01",0,700,0,1400,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200420a01">
"Uck&, ah&, hii&.&.&.N- ahhhh&.&.&.!!"

//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200430b04">
"Ngh&.&.&. Aoba-san&, you're adorable&.&.&."

//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/1200440b09">
"Come as much as you can&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se擬音_水_はねる05");
	MusicStart("SE02",0,600,0,900,null,false);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵ＥＶ123", 1000, -26, -573, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
Trip licks my ear and cheek from behind&, stroking my cock 
as well&.

Virus kisses me in the front&, taking away my gasps and 
shrieks&. It hurts to breathe&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ21");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200450a01">
"&.&.&.Mn&, guh&, nghh&.&.&.Fwah!"

It hurts so much to stand&, but my body pushes upwards&.

I had just ejaculated before&, but&.&.&.
I keep reaching my highest point over and over&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ22");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ130", 130, Center, Middle, "cg/ev/ev541ウイルストリップED挿入.jpg");
	Fade("絵ＥＶ130", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
I had also gone insane&. 
I had gone insane&. Because of these two&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0143]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200460b04">
"Aoba-san&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/1200470b09">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵ＥＶ130", 500, null, true);

	CreateTextureEX("絵ＥＶ124", 124, -26, -573, "cg/ev/l/ev541ウイルストリップED挿入a_l.jpg");
	Move("絵ＥＶ123", 500, -26, -494, Dxl1, false);
	Move("絵ＥＶ124", 500, -26, -494, Dxl1, false);
	Fade("絵ＥＶ124", 500, 1000, null, true);

	Move("絵ＥＶ124", 500, -26, -360, Dxl1, false);
	CreateTextureEX("絵ＥＶ125", 125, Center, Middle, "cg/ev/ev541ウイルストリップED挿入a.jpg");
	Fade("絵ＥＶ125", 500, 1000, null, true);

	Delete("絵ＥＶ123");
	Delete("絵ＥＶ124");

	CreateSE("SE02","se人体_動作_衣擦れ24");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200480a01">
"&.&.&.Ugah&.&.&. Ahhhhhhhhh&.&.&.&.&.&.!!!!"

Like it was no longer mine&, my body finally reached 
its end&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,700,0,800,null,false);
	SetVolumeEX("SE02", 1500, 0, null);

	FadeDelete("絵ＥＶ*", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
As I shudder while the semen spurts out&.&.&. I lean 
against Virus's shoulder&, all thoughts gone from my mind&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se擬音_水_はねる06");
	MusicStart("SE02",0,500,0,1200,null,false);

	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ140", 140, 0, -573, "cg/ev/l/ev541ウイルストリップED挿入b_l.jpg");
	Move("絵ＥＶ140", 1000, -456, -326, Dxl1, false);
	Fade("絵ＥＶ140", 1000, 1000, null, true);

	CreateSE("SE03","se人体_動作_衣擦れ22");
	MusicStart("SE03",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0153]
They rocked my powerless body&, their breaths erratic&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0154]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200490b04">
"Mn&.&.&."

//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/1200500b09">
"&.&.&.! &.&.&.&.&."

How much longer will they do this&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ10");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE01","se人体_動作_衣擦れ21");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ141", 141, Center, Middle, "cg/ev/ev541ウイルストリップED挿入b.jpg");
	Move("絵ＥＶ140", 500, -619, -286, Dxl1, false);
	Fade("絵ＥＶ141", 500, 1000, null, true);

	Delete("絵ＥＶ140");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
They both continue to indulge in me to their heart's 
content&, my soul gone&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/1200510b04">
"Nn&, ngh&.&.&. Aoba-san&.&.&."

{
	CreateSE("SE02","se人体_動作_衣擦れ11");
	MusicStart("SE02",0,700,0,1000,null,false);
}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/1200520b09">
"Aoba&.&.&.&.&.!"

{
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	FadeDelete("絵ＥＶ141", 250, null, true);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/1200530a01">
"&.&.&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0162]
Listening to their wild breathing&, I slowly close my eyes&.
Without any idea of when I'll be set free&, I wade in 
infinite pleasure&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateTextureSP("絵ＥＶ142", 142, -268, -217, "cg/ev/l/ev541ウイルストリップED挿入b_l.jpg");
	Zoom("絵ＥＶ142", 0, 2000, 2000, null, true);
	Request("絵ＥＶ142", Smoothing);
	Move("絵ＥＶ142", 1500, -268, 25, Dxl1, false);
	FadeDelete("絵色黒", 1500, null, true);

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0163]
A stream of tears run down my cheek&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	if($RECRIB_PLAY==1){//回想時
	}else{
	SoundPlay("@dmedbd06",0,450,true);
	}

	Move("絵ＥＶ142", 1500, -268, 120, Dxl1, false);

	ClearFadeAll(3000, true);

	if($RECRIB_PLAY==1){//回想時
		Wait(1500);
	}else{
	Wait(3000);
	WaitKey(2000);
	}

//※次ファイル["dm9999.nss"]

}
