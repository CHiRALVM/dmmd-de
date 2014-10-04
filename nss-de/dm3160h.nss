//<continuation number="370">
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


scene dm3160h.nss_MAIN
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
	#ev316ミンク駅弁前戯=true;
	#ev316ミンク駅弁挿入=true;
	#ev316ミンク駅弁挿入a=true;
	#bg303061_5_娯楽施設クラブフロア横通路=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3170.nss";

	if($RECRIB_PLAY==1){//回想モード中
		$GameName = "";
		$GameCircle=false;
	}
	#RECLIB06=1;//回想用フラグ取得

}


scene dm3160h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm022",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg303061_5_娯楽施設クラブフロア横通路");
	FadeBG(0,true);

	$ftime=500;if($RECRIB_PLAY==1){$ftime=1000;}//回想時
	FadeDelete("上背景", $ftime, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I thought we were leaving the dance floor&, but we 
weren't&.

Mink doesn't head for a door&, but rather goes into a 
narrow alley next to it&.

We ended up at a dead end with not a soul in sight&.

Plastered on the wall are various flyers; they somehow 
look like scales on a monster&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 10, 5, -10, 2, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000010a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I'm violently shoved with my back against the wall&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	St("C",740, @0,@0,"fuミンク_通常正面_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Mink pushes my arms onto the wall and throws his knee 
between my thighs to keep me down&.

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/6000020a05">
"So this is your true character&."

{
	Fw("fw蒼葉_通常_worry2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000030a01">
"True character?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I'm in a daze&.&.&. I don't understand what he means&.

Unable to process anything&, I just look up to Mink&.

His eyes have a different light to them than the usual&.

&.&.&.Do they really&, or is it just my imagination?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常正面_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/6000040a05">
"&.&.&.Idiot&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Mink murmurs angrily&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	St("C",740, @0,@0,"fuミンク_通常正面_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/6000050a05">
"Strip&."

{
	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_shock3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000060a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
His large hands slip into my pants and grab at me 
violently&. My body tenses up&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000070a01">
"&.&.&.Someone- might see us&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常正面_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/6000080a05">
"Don't care&."

{
	Fw("fw蒼葉_通常_trip");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000090a01">
"&.&.&.Hu&, hahaha!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_ベルト外す01");
	MusicStart("SE01",0,500,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
I drop my bag to the ground and undo my belt&.

But my fingers aren't handling it too well&.

{
	CreateSE("SE01","se人体_動作_ベルト外す01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ08");
	MusicStart("SE02",0,700,0,1000,null,false);
}
As I try fiddling my hands around&, Mink roughly pulls off 
my underwear&.

His eyes move to my naked lower half&.

And with just that&.&.&. my body flares up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,600,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("絵ＥＶ101", 101, -20, -17, "cg/ev/m/ev316ミンク駅弁前戯_m.jpg");
	CreateTextureEX("絵ＥＶ100", 100, 0, 0, "cg/ev/l/ev316ミンク駅弁前戯_l.jpg");
	Move("絵ＥＶ100", 1000, -121, -83, Dxl3, false);
	Fade("絵ＥＶ100", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000100a01">
"&.&.&.Ha!"

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/6000110a05">
"&.&.&.You're already like this even though I haven't done
 anything&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ100", 1000, 0, 0, Dxl3, false);
	Move("絵ＥＶ101", 1000, -90, -67, Dxl3, false);
	Fade("絵ＥＶ101", 1000, 1000, null, true);
	Delete("絵ＥＶ100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
I get even harder with just him watching me&.

Usually I'd be embarrassed&, but now&.&.&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000120a01">
"&.&.&.Don't get too impatient&."

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/6000130a05">
"&.&.&.&.&."

{
	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000140a01">
"Come on&, do me&.&.&. Hurry up&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ101", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
My lust uncontainable&, I start to jack myself off&.

I don't really know myself&.&.&. why I'm doing this&.

I just want it so badly&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ17");
	MusicStart("SE02",0,700,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 15, 0, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Expressionless&, Mink firmly holds down my shoulders&.
He pushes my knees to the ground with harsh force&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常正面_normal");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/6000150a05">
"Then do it yourself&."

{
	Fw("fw蒼葉_通常_trip");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000160a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
I get goosebumps as he orders me around&.

&.&.&.I'm not my usual self&.

I think that&, but soon enough the background music churns 
my thoughts into mush&.

{
	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,700,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");
}
Mink puts his hand to my head and pulls on my hair&.

{
	CreateSE("SE01","se人体_動作_ベルト外す01");
	MusicStart("SE01",0,700,0,800,null,false);
}
A tingling sensation zaps through my hair while I hurriedly
undo his belt&.

I've never put some guy's dick in my mouth before&.&.&. but 
I don't really care right now&.

I pull down Mink's underwear and put my lips to his cock&. 
He has no reaction&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateTextureEX("絵背景100", 100, -349, -444, "cg/bg/l/bg303061_5_娯楽施設クラブフロア横通路_l.jpg");
	Move("絵背景100", 500, -349, -384, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0068]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000170a01">
"Nm&.&.&. mnh!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0069]
I take it into my mouth and softly roll my tongue around 
it&.

As I suck on him like candy&, he reacts&, just a little bit&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,1000,null,false);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000180a01">
"N-Nmngh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
I take his half-hard dick in and start moving my head&.

The sound of water gushes around and my saliva drips to 
the ground&.

I frantically move my head up and down as he pushes my 
head into his crotch with his hands&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,600,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000190a01">
"Ungh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
Mink's now completely stiff cock spans my entire mouth&.

But Mink still unmindfully holds my head and keeps pulling and pushing it&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,600,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0076]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000200a01">
"Ungh&.&.&.! Fu-Mn&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
&.&.&.It's suffocating&. Painful&. I'm going to throw up&.
Tears start to form in the corners of my eyes&.

But during all of this&.&.&. I'm absolutely exhilarated&.

What I want&.&.&.

Is something stronger&.&.&.

More&.&.&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000210a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,500,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Move("絵背景100", 500, @0, @100, Dxl1, false);
	Fade("絵背景100", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0088]
He pulls my head all the way off of him&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ17");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("絵背景100", 500, @0, @100, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

	CreateSE("SE01","se人体_衝撃_叩く02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 20, 0, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
He immediately pulls me up by the arm and pushes me 
against the wall&.

He lifts one of my legs and puts his hot cock inside of me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ110", 110, -1025, 0, "cg/ev/l/ev316ミンク駅弁挿入_l.jpg");
	Move("絵ＥＶ110", 1000, -905, -73, Axl3, false);
	Fade("絵ＥＶ110", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000230a01">
"Ah&, ha&.&.&. Ungh&.&.&.&. Ah&.&.&.!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
&.&.&.And suddenly&, an intense pain runs throughout my body&.

Without any preparation&, Mink mercilessly pushes into me 
and stretches my ass apart&.

It's so tight that I stop breathing&, my throat shuts off&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000240a01">
"Uuh&, ah&.&.&. Ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100a]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/6000250a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100b]
Mink pushes all the way up and starts to move&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ111", 111, Center, Middle, "cg/ev/ev316ミンク駅弁挿入.jpg");
	Move("絵ＥＶ110", 800, -678, -189, Dxl3, false);
	Fade("絵ＥＶ111", 800, 1000, null, true);
	Delete("絵ＥＶ110");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100c]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000260a01">
"Hi&.&.&.! Ahh&.&.&. Kuh&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100d]
As he penetrates my narrow insides&, I'm hit with a searing pain&.

I desperately cling to Mink as if it were a matter of life 
and death&, and scream louder with each thrust&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ20");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ112", 112, -292, 0, "cg/ev/m/ev316ミンク駅弁挿入_m.jpg");
	Move("絵ＥＶ112", 500, -210, -107, Dxl3, false);
	Fade("絵ＥＶ112", 500, 1000, null, true);
	Delete("絵ＥＶ111");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000261a01">
"Ah&, ahh&, unh&.&.&. Ahh&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/6000270a05">
"&.&.&.Satisfied yet?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ113", 113, -641, -153, "cg/ev/l/ev316ミンク駅弁挿入_l.jpg");
	Fade("絵ＥＶ113", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0109]
His breath reaches my ears and makes me tremble&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 3000, 800, null);

	CreateSound("クラブ", BGM, "sound/bgm/dmbgm022.ogg");
	SetVolume("クラブ", 0, 0, null);
	Request("クラブ", Play);
	SetLoop("クラブ", true);
	SetVolume("クラブ", 1000, 600, null);

	CreateSE("SE01","se人体_動作_衣擦れ21");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
And suddenly&, the music from the dance floor grows louder&.

I feel like the low bass is chopping my body apart&.

With this unstable melody&.&.&.

Both my mind and my body&.&.&. are being raped&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 3000, 550, null);

	SetVolume("クラブ", 3000, 100, null);

	CreateSE("SE心臓","se人体_心臓_鼓動02");
	MusicStart("SE心臓",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵板写", 200, null, true);
	Delete("絵ＥＶ112");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000280a01">
"Ngh&.&.&. Ahn&.&.&. Ah&, more&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
Both my shame and honor cast aside&, I plead with Mink&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE心臓","se人体_心臓_鼓動02");
	MusicStart("SE心臓",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Zoom("絵板写", 200, 1100, 1100, null, false);
	FadeDelete("絵板写", 200, null, true);
	Delete("絵ＥＶ112");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000290a01">
"More&, harder&.&.&. Ah&, ah&.&.&. More&.&.&.!"

{
	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/6000300a05">
"&.&.&.!"

Mink lets out a quick breath and pushes me up with even 
more power&.

With my mind blurring with pleasure and pain&, secretion 
starts to drip from my stiff cock&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ22");
	MusicStart("SE01",0,700,0,800,null,false);
	Move("絵ＥＶ113", 500, -678, -57, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000310a01">
"Hii&.&.&. Ahn&.&.&.!"

I want him to wreck me harder&.
Until I can't think anymore&.

More&, more&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000320a01">
"Ah&.&.&.! I- I can't&.&.&. Ngh&.&.&.!"

My intense urges are driven to the limit&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ21");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ17");
	MusicStart("SE02",0,500,0,800,null,false);

	CreateTextureEX("絵ＥＶ114", 114, -678, -57, "cg/ev/l/ev316ミンク駅弁挿入a_l.jpg");
	Move("絵ＥＶ114", 500, @0, @-50, Dxl1, false);
	Fade("絵ＥＶ114", 500, 1000, Dxl3, true);
	Delete("絵ＥＶ113");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000330a01">
"I can't&.&.&. Ah&, I'm coming&.&.&. Ungh&, ahhhh&.&.&.!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateTextureEX("絵ＥＶ115", 115, Center, Middle, "cg/ev/ev316ミンク駅弁挿入a.jpg");
	Move("絵ＥＶ114", 500, -678, -233, Dxl1, false);
	Fade("絵ＥＶ115", 500, 1000, null, true);
	Delete("絵ＥＶ114");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
My voice raises immodestly as I cling onto Mink&.

Semen splurts out&, my mind and body warp&.

{
	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateTextureEX("絵ＥＶ116", 116, -641, -153, "cg/ev/l/ev316ミンク駅弁挿入a_l.jpg");
	Fade("絵ＥＶ116", 500, 1000, null, true);
	Delete("絵ＥＶ115");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000340a01">
"Ugh&.&.&. Haa&.&.&. Ah&.&.&.!"

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/6000350a05">
"&.&.&.! &.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SetVolume("クラブ", 3000, 300, null);
//	SetVolumeEX("@dm*", 3000, 450, null);
	Move("絵背景*", 500, @0, @-50, Dxl1, false);
	FadeDelete("絵ＥＶ*", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
After I came&, Mink started to thrust violently and deeply&.&.
then soon came to a stop&.

Mink let out all of his strength while I was numbed with 
pain&.

Mink came too&.&.&.

{
	SetVolumeEX("@dm*", 3000, 0, null);
	SetVolume("クラブ", 3000, 300, null);
}
&.&.&.&.&.

&.&.&.My head and body both feel sluggish&.
Looks like that took all the energy out of me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolume("クラブ", 3000, 150, null);

	CreateColorSP("絵黒幕", 2000, "BLACK");

	DrawTransition("絵黒幕", 2000, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/6000360a01">
"&.&.&.&.&."

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/6000370a05">
"&.&.&.Hey&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
I yield to the tiring feeling that washes over me and 
close my eyes&.

My consciousness on the edge&, floating away&, I fall asleep 
while still being awake&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolume("クラブ", 2000, 0, null);

	if($RECRIB_PLAY==1){//回想時
		ClearFadeAll(1000, true);Wait(2000);
	}else{
	ClearFadeAll(2000, true);
	}

//※次ファイル["dm3170.nss"]

}
