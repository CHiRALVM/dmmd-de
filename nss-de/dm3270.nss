//<continuation number="260">
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


scene dm3270.nss_MAIN
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
	$GameName = "dm3280.nss";

}


scene dm3270.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm006",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	St("C",740, @0,@0,"buミンク_通常_angry2");
	FadeSt("C",200,true);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/7000010a05">
"Face your back to me and put your hands on the wall&."

{
	Fw("fw蒼葉_通常_pinch");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/7000020a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
With those words&.&.&. I guess at what's coming next&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/7000030a01">
"That's not funny&, stop fucking around!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0013]
//　とっさにミンクの腹目掛けて膝を繰り出す。

//</PRE>
//	SetText();
//	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,800,null,false);
	Wait(200);

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,700,0,700,null,false);

	CreateSE("SE02","se戦闘_打撃_ヒット低01");
	MusicStart("SE02",0,700,0,900,null,false);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(10);
	DeleteAllSt(0,true);
	FadeDelete("絵フラッシュ白", 100, Axl2, true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 45, 0, 0, 10, 500, null, true);
	Delete("絵板写");

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/7000040a01">
"&.&.&.Ugh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I tried to knee Mink in the abdomen&, but I was too slow&. 
He ended up blocking it with his arm then threw another hit
to my face&.

The world stops with a single blow&. The taste of blood 
fills my mouth&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミンク_通常正面_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/7000050a05">
"Hurry up&."

{
	Fw("fw蒼葉_通常_hard2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/7000060a01">
"I said no&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(200);

	CreateSE("SE02","se人体_動作_衣擦れ17");
	MusicStart("SE02",0,700,0,700,null,false);

	CreateSE("SE03","se戦闘_打撃_ヒット高04");
	MusicStart("SE03",0,700,0,1000,null,false);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(10);
	DeleteAllSt(0,true);
	FadeDelete("絵フラッシュ白", 100, Axl2, true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 60, 0, 0, 0, 500, null, true);
	Delete("絵板写");

//	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/7000070a01">
"Ungh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I try to block his attacking arm and counterattack&, 
but I soon realize that I'm no match for him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,800,null,false);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/7000080a01">
"No&, &.&.&.Ah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,50,null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Mink starts pulling the back of my hair again as I resist&.
The sweat drips down my body as the intolerable pain 
persists&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/7000090a01">
"&.&.&.&. Let go&.&.&.!"

{
	St("C",740, @0,@0,"fuミンク_通常正面_normal");
	FadeSt("C",200,true);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/7000100a05">
"Shut up&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	DeleteAllSt(0,true);
	FadeDelete("絵フラッシュ白", 100, Axl2, true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 70, 0, 0, 0, 500, null, true);
	Delete("絵板写");

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/7000110a01">
"Ow&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateTextureEX("絵背景200", 200, -232, -480, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");
	Move("絵背景200", 500, -232, -571, Dxl1, false);
	Fade("絵背景200", 500, 1000, null, true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 50, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
As the punches keep coming&, my world gets blurrier and 
blurrier&. Eventually he flips around my staggering body&.

He pushes down on my head against the cold&, hard wall&, 
to which my cheeks start to swell against&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,700,0,700,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 30, 0, 0, 500, null, true);
	Delete("絵板写");

//	BGPlainShake(50,300,0,20,0,0,1000,null,true);

//	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/7000120a01">
"Urgh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Like he's trying to squish me against the wall&, he leans 
his weight on my back&.

He smells like cinnamon&.

&.&.&.I don't want this&.

My hands naturally clamp into fists&, and I grind my molars together so hard that they could break&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/7000130a01">
"&.&.&.Why&, &.&.&.What is all this&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
In a humiliating state of complete helplessness&, my 
thoughts have nowhere to go but out of my mouth&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/7000140a01">
"I never asked for this sort of power&.&.&. I&.&.&. I would've
 been just fine with living like a normal person!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/7000160a01">
"But because you saved Granny&.&.&. That's why I listened to
 you&, even if my stomach churned at just the thought of
 it&.&.&.!!"

{	Fw("fw蒼葉_通常_pain2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/7000170a01">
"But&.&. I don't even know what's going on anymore! Do you
 think you can just shove things down my throat&.&.&.!?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/7000180a01">
"Let me at least pretend to not know what's going on&.&.&.
 I hate this&.&.&.!!" 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/7000190a01">
"I'm&.&.&. different from you&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
Screaming out all of the things pooled in my chest&, my 
voice goes hoarse as if I was crying&. My shoulders 
shake on their own&.

{
	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵背景200", 500, null, true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 30, 0, 0, 500, null, true);
	Delete("絵板写");
}
Mink's hand reaches out further and grips my jaw&.

{
	St("C",740, @0,@0,"fuミンク_通常正面_serious");
	FadeSt("C",200,true);
}
He turns my face around with immense force&, and his sharp 
eyes meet mine&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/7000200a05">
"It's your fate to carry that burden&. It's been decided
 since you were born&. So curse the gods&, if anyone&."

{
	St("C",740, @0,@0,"fuミンク_通常正面_normal2");
	FadeSt("C",200,true);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/7000210a05">
"But you're not the only one shouldering something&.
 Everyone is the same&. Don't think you're some tragic
 protagonist&."

{
	St("C",740, @0,@0,"fuミンク_通常正面_angry");
	FadeSt("C",200,true);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/7000220a05">
"What you want and don't want doesn't matter&. You get what
 burdens you were given&, that's the reality&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	St("C",740, @0,@0,"fuミンク_通常正面_angry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/7000230a05">
"The rest has nothing to do with it&. If you hate it&, fight
 to the death&. Don't accept it&."

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/7000240a05">
"What you decide to do is all on your own&. Are you some
 idiot who wants someone else to decide for them?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/7000250a01">
"&.&.&.!"

{
	St("C",740, @0,@0,"fuミンク_通常正面_serious");
	FadeSt("C",200,true);
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/7000260a05">
"I'll do what I want&. What you think doesn't matter&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm3280.nss"]


//	ClearFadeAll(1000, true);

}
