//<continuation number="440">
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


scene dm0362_vs.nss_MAIN
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
	$GameName = "dm0370.nss";

}


scene dm0362_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm006",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg104031_5_蒼葉宅自室消灯荒らし");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, -800, "cg/bg/l/bg104031_5_蒼葉宅自室消灯荒らし_l.jpg");

	FadeDelete("上背景", 0, null, true);

//==============================================
//※「屋根から何か音がした」を選んだ場合
//==============================================

//	CreateSE("SE01","se人体_動作_掴む01");
//	MusicStart("SE01",0,4500,0,1000,null,false);

	CreateSE("SE02","se人体_衝撃_転倒02");
	MusicStart("SE02",0,400,0,800,null,false);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I hear a heavy sound from somewhere&.

But I can't afford to think about what it is&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_絞める01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 3000, 0, null);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 5, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6200010a01">
"That hurts&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
A strong pain runs through my arm and I grit my teeth&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se人体_動作_叩く01");//あきゅん「ＳＥ：se人体_動作_叩く01」
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fwノイズ_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/6200020a03">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/6200030a04">
"Please separate from Master&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/6200040a03">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Suddenly I hear the voice of a different person&.

I turn to look and&.&.&. I'm very startled&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6200050a01">
"You&.&.&."

{
	SoundPlay("@dm009",0,450,true);

	DeleteFw();
	CreateTextureEX("絵背景200", 200, Center, -62, "cg/bg/m/bg104031_5_蒼葉宅自室消灯荒らし_m.jpg");
	SetShade("絵背景200", MEDIUM);
	Move("絵背景200", 250, @-200, @0, Dxl1, false);
	Fade("絵背景200", 250, 1000, null, true);
	Delete("絵背景100");

	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/6200060a04">
"Hello&, Master&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I'm not sure when he came in&, but next to the man stands 
the gas mask-wearing guy I'd met in front of Heibon&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,600,0,800,null,false);

	DeleteAllSt(180,true);
	Move("絵背景200", 250, @400, @0, Dxl1, true);
	St("L",740, @0,@0,"buノイズ_通常_normal");
	FadeSt("L",180,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/6200070a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
The man in green stands cautious with his whole body like 
a hedgehog&, and moves to put some distance between him and 
the gas mask guy&.

I rub my aching arm when I'm released&, then straighten 
myself&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("L",740, @0,@0,"buノイズ_通常_normal2");
	FadeSt("L",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/6200080a03">
"You&.&.&. When’d you come in?"

{
	DeleteAllSt(180,true);
	Move("絵背景200", 250, @-400, @0, Dxl1, true);
	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",180,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/6200090a04">
"Just now&, through that door over there&. Master&, is this
 a friend of yours?"

{
	FwPro("fw蒼葉_通常_shock2",1200,"fw蒼葉_通常_shock");
//	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6200100a01">
"No&.&.&. Hm? But that door's&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
	Move("絵背景200", 250, @-100, @0, Dxl1, false);
	FadeDelete("絵背景200", 250, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
When I look at the veranda&.&.&.

&.&.&.I see the door wide open&.

{
	CreateSE("SE01","se環境_自然_風と木々01L");
	MusicStart("SE01",0,500,0,1000,null,true);
	SetVolumeEX("SE*", 3000, 0, null);
}
No&, the lock's been cut off completely&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6200110a01">
"You&.&.&. what have you done?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("R",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("R",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/6200120a04">
"The door was closed&, so I opened it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");

//――――――――――――――――――――――――――――――――――――――
/*
{
	Fw("fw蒼葉_通常_rage");
}
*/
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6200130a01">
"That's not what I meant&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("L",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("L",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/6200140a03">
"Master?"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/6200150a04">
"Yes&. Master is my Master&."

{
	St("L",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("L",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/6200160a03">
"&.&.&.Are you kidding me?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
The man scowls at the other man and I with a fierce 
expression&.

Even though he's looking at me like that&, I have no idea 
what's happening at all&. 

I mean&, everything's getting confusing&, and&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	ClearComic("怒り01",1000);
	ClearComicNext(20001,676, 29,19,"stL");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【クリア】※漫符：怒り
<voice name="クリア" class="クリア" src="voice/dm03/6200170a04">
"Anyway&, please don't bully Master&. I won't allow it&."

{	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6200180a01">
"&.&.&.&.&."

{
	St("L",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("L",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/6200190a03">
"That's ridiculous&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicDelete("怒り01");
	ClearComicNexDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
&.&.&.Don't tell me he's actually getting really angry?

The man in green turns his body towards the gas mask guy&.

I can feel his bloodlust even as he faces the other way&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6200200a01">
"Hey&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
&.&.&.I have to stop them&.

If my room gets any more messed up&, I'll be in trouble&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_蒼葉宅自室扉_扉開く強く01");//あきゅん「ＳＥ：se物体_蒼葉宅自室扉_扉開く強く01」
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw紅雀_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/6200210a02">
"Aoba!"

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6200220a01">
"Eh!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
Suddenly the door opens and Koujaku flies in&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"st紅雀_通常_shout");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/6200230a02">
"Are you okay!?"

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6200240a01">
"Koujaku&.&.&.!? Why are you-"

{
	St("C",740, @0,@0,"st紅雀_通常_angry2");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/6200250a02">
"I sent you a message saying I'd come to talk about Mizuki&, didn't I? Then I saw some weirdo in a gas mask going in
 through the veranda&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/6200260a02">
"So I came in a hurry&.&.&."

{
	St("C",740, @0,@0,"st紅雀_通常_angry");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/6200270a02">
"Seems that someone else besides gas mask guy is here too&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
Koujaku fixes his eyes on the gas mask man and the man in 
green&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(180,true);
	St("L",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("L",180,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/6200280a03">
"The way I'm seeing it&, you're the ones who're in the way&."

{
	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st紅雀_通常_angry");
	FadeSt("C",180,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/6200290a02">
"So you're not that guy's friend?"

{
	DeleteAllSt(180,true);
	St("L",740, @0,@0,"stノイズ_通常_normal3");
	FadeSt("L",180,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/6200300a03">
"Don't lump me with him&."

{
	DeleteAllSt(180,true);
	St("R",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("R",180,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/6200310a04">
"We certainly have not yet put each other in a category
 called friends&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st紅雀_通常_shout");
	FadeSt("C",180,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/6200330a02">
"Anyway&, you guys better leave right now&. Or else I'll
 throw you out&."

{
	DeleteAllSt(180,true);
	St("L",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("L",180,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/6200340a03">
"How?"

{
	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st紅雀_通常_angry");
	FadeSt("C",180,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/6200350a02">
"I guess I wouldn't have any other choice but to use brute
 force&."

{
	DeleteAllSt(180,true);
	St("L",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("L",180,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/6200360a03">
"I'd like to see you try&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
The man raises the edges of his mouth to provoke Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("L",740, @0,@0,"stノイズ_通常_smile");
	FadeSt("L",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/6200370a03">
"You're shouldering some big stuff&, are you actually so
 weak to need to do something like that?"

{
	St("R",740, @0,@0,"st紅雀_通常_angry");
	FadeSt("R",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/6200371a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//{あきゅん「↓：マヌケな感じがしたら音使わない」
//	CreateSE("SE01","se人体_動作_関節鳴らし01");//あきゅん「ＳＥ：se人体_動作_関節鳴らし01」
//	MusicStart("SE01",0,700,0,1000,null,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
Normally he would never be provoked by something like 
this&, but is he actually&.&.&.

Koujaku puts both hands together and cracks his knuckles 
in front of me&.

Aah&.&.&. It's useless to try and stop him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("R",740, @0,@0,"st紅雀_通常_angry2");
	FadeSt("R",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0106]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/6200380a02">
"I'll shut that bratty mouth of yours up right now!"

{
	Fw("fw蒼葉_通常_shout2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6200390a01">
"Hey&, wait a minute!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ25");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
As soon as I say that&, Koujaku takes a long stride 
towards the man&.

The distance between the two becomes smaller and he tries 
to catch him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_風切り低01");//あきゅん「ＳＥ：se戦闘_打撃_風切り低01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(10);
	Fade("絵色白", 70, 0, null, true);

	Fw("fwノイズ_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/6200400a03">
"&.&.&.Huh!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
The man dodges quickly&, drops down low&, and tries to hit 
Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_動作_跳躍高01");//あきゅん「ＳＥ：se戦闘_動作_跳躍高01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(10);
	Fade("絵色白", 70, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
Just before the man's fist can graze his cheek&, Koujaku 
avoids it&.

&.&.&.Hey&, I shouldn't be just sitting around and watching!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se環境_戦闘_紅雀とノイズのもみ合い01L");//あきゅん「ＳＥ：se環境_戦闘_紅雀とノイズのもみ合い01L」
	MusicStart("SE01",0,700,0,1000,null,true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0114]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6200410a01">
"Stop it! This is my room!"

{
	Fw("fwクリア_通常マスクあり_normal");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/6200420a04">
"Both of them are strong&, aren't they?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6200430a01">
"Now's not the time to say something so carefree!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
Aside from with this man&, Koujaku usually had lots of 
patience&, he must have a short-temper switch for some 
situations&.&.&.!

And if the switch is turned on&, he won't listen to anyone 
else&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se物体_物入れ_散らかる01");//あきゅん「ＳＥ：se物体_物入れ_散らかる01」
	MusicStart("SE02",0,700,0,1000,null,false);
	BGPlainShake(50,300,0,20,0,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0124]
As the two of them brawl on the floor&, the magazines and 
trash can also on the floor are kicked&, stepped on and 
crushed&.

Aaaaaah&.&.&.

The other stuff is fine&, but please don't go near the 
computer&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0126]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6200440a01">
"Can you both just freakin' stop&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se物体_蒼葉宅階段_登る強く01");//あきゅん「ＳＥ：se物体_蒼葉宅階段_登る強く01」
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0127]
The sound of the two of them rampaging almost covers my 
shout&, but I can hear pounding footsteps coming up the 
stairs towards my room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0370.nss"]

}
