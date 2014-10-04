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


scene dm0510.nss_MAIN
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
	#ev051ミンク登場=true;
	#ev051ミンク登場a=true;
	#bg106011_5_廃ビル広間=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0520h.nss";

}


scene dm0510.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg106011_5_廃ビル広間");
	FadeBG(0,true);

	CreateSE("SE01","se擬音_水_はねる01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);

	CreateSE("SE01","se擬音_水_はねる01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg106011_5_廃ビル広間.jpg");
	SetShade("絵背景", MEDIUM);

	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
	CreateColorSP("絵窓/絵色黒", 5000, "000000");
	DrawTransition("絵窓/絵色黒", 0, 0, 200, 800, null, "cg/data/circle_13_00_1.png", true);

	CreateColorEXsub("絵色黒", 2000, "WHITE");
	Fade("絵色黒", 0, 300, null, true);

	FadeDelete("上背景", 2000, null, true);

//※水滴_数滴（ぴちょん、ぴちょんと雨だれ）

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/1000010a01">
"&.&.&.Ugh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
&.&.&.&.&.&.
My head hurts&.&.&.

&.&.&.&.&.&.

I&.&.&.
Did I black out&.&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵色黒", 1000, null, true);

	Fade("絵背景", 300, 0, Dxl1, true);
	Wait(500);
	Fade("絵背景", 300, 1000, Dxl1, true);
	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I open my eyes&, and all I can see are fuzzy shades of 
black&. I can't tell left from right&.

I hear the sound of water dripping&. Is it raining?

I feel the cold concrete on my cheek&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵窓/絵*", 1500, null, false);
	FadeDelete("絵背景", 1500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Anyway&, where am I&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1300,null,false);
	BGPlainShake(50,300,0,5,0,0,1000,Dxl1,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
I try to stand up&, but it's hard to move&.

I can't seem to move my body&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/1000020a01">
"&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Something makes a sqeaking noise on my arms&. Something's 
binding them&.

I pathetically try to raise my head as I lie face down on 
the ground&. <k>&.&.&.And then I freeze in place&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ101", 101, Center, -400, "cg/ev/ev051ミンク登場a.jpg");
	CreateTextureEX("絵ＥＶ100", 100, Center, -400, "cg/ev/ev051ミンク登場.jpg");
	Fade("絵ＥＶ100",1000 0, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I can see shoes that look like they have claws on them&.

Slowly&, I look upwards to see what's above them&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ*", 3000, @0, @250, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/1000030a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);
	Move("絵ＥＶ*", 2000, @0, @150, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
That intimidating look&.&.&.

It's probably that giant man&.

He just waltzed into my home&, and then he punched me in 
the gut&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵ＥＶ101", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
He looks at me and puts his pipe to his mouth&.

He breathes out a puff of smoke from his pipe and it 
floats through the air&.

{
	Fade("絵ＥＶ101", 500, 0, null, false);
}
&.&.&.Yeah&. I remember&.

He took Granny&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/1000040a01">
"&.&.&.Where's Granny?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵ＥＶ101", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/1000050a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵ＥＶ101", 500, 0, null, false);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/1000060a01">
"What did you do with her? Answer me!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
I'm so angry I feel like I'm about to explode&, and I 
quietly let out a growl&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se物体_ベッド_鳴る01");
	MusicStart("SE02",0,500,0,1000,null,false);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,800,null,false);

	FadeDelete("絵ＥＶ*", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
The man just watches me silently and then stands up from 
the sofa&.

As I wonder what he will do next&, he looms over me and 
pulls me up by my bangs&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※衣擦れ（前髪を掴み上げられる）
	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 6000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, Dxl1, "cg/data/slide_02_01_1.png", true);

	CreateTextureSP("絵背景裏", 50, -30, -167, "cg/bg/l/bg106011_5_廃ビル広間_l.jpg");
	CreateTextureEX("絵背景", 1000, -30, -167, "cg/bg/l/bg106011_5_廃ビル広間_l.jpg");

	St("C",740, @0,@0,"fuミンク_通常正面_normal");
	FadeSt("C",0,true);

	CreateSE("SE02","se人体_動作_衣擦れ07");
	MusicStart("SE02",0,700,0,800,null,false);

	Shake("絵背景", 200, 0, 15, 0, 0, 500, Axl1, false);
	DrawDelete("絵黒幕", 200, 100, Dxl1, "slide_02_01_0", true);

	CreatePlainSP("絵板写", 5000);
	Shake("絵板写", 200, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/1000070a01">
"! Ouch&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
An intense pain runs through my hair and causes my 
expression to warp&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/1000080a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
He ignores my pain and looks at my face&.

His eyes&.&.&. They look like there's no light in them at all&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常正面_normal2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/1000090a05">
"Do you understand the situation you're in?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,600,0,800,null,false);

	Move("絵背景", 500, -672, -412, Dxl1, false);
	Fade("絵背景", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
He pulls my hair to the side and makes me face another 
direction&.

I see two filthy men standing there with machine guns in 
hand&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuミンク_通常正面_serious");
	FadeSt("C",0,true);

	Move("絵背景", 500, @50, @0, Dxl1, false);
	Fade("絵背景", 500, 0, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/1000100a05">
"With a snap of my fingers&, they'll swarm like bees and
 it'll be all over for you&. It'll only take 5 seconds&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵背景", 0, @924, @0, Dxl1, true);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/1000110a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景裏");

	DeleteSt("C", 0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg106011_5_廃ビル広間.jpg");

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵背景", 250, 0, 10, 0, 0, 500, Axl1, false);
	FadeDelete("絵板写", 250, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
He takes my silence as understanding and lets go of my 
hair&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/1000120a01">
"&.&.&.Ow!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
With a violent thud&, my chin hits the concrete&. 

Ouch&.&.&. I almost bit my tongue&.

At any rate&, I'm in a real bad situation&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/1000130a05">
"Hey&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
The man calls out to his little henchmen and whispers 
something to them&. They reply and leave&.

I'm in a serious pinch&, and desperately try to think of 
something&.

Shit&, I have to get these restraints off or else&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 500, 5, 5, 0, 0, 500, Axl1, false);

	Wait(500);

//※ＳＥ：地面に倒れつつもがく
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
I try rubbing my arms together as hard as I can&.

I feel them loosen a little&, but they're not off just yet&.

Is there anything by my feet?
I check around&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ09");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 500, 10, 0, 0, 0, 300, Axl1, false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
I feel the ground with my feet&, but there's nothing there&.

Shit&.&.&.
I have to do something&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0520h.nss"]

}
