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


scene dm3390.nss_MAIN
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
	#ev339首を絞められる蒼葉=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3400.nss";

}


scene dm3390.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm006",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302021_5_グリッター居間天井");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I start to feel a heaviness around my waist and something 
coils around my neck&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_絞める01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ101", 101, Center, Middle, "cg/ev/ev339首を絞められる蒼葉.jpg");
	CreateTextureEX("絵ＥＶ100", 100, -549, -330, "cg/ev/l/ev339首を絞められる蒼葉_l.jpg");
	Move("絵ＥＶ100", 1000, -549, -348, Dxl3, false);
	Fade("絵ＥＶ100", 1000, 1000,  Dxl1, true);

	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/9000010a01">
"&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
My consciousness perks up as I'm being choked&.

When I open my eyes&, Mink is ontop of me&, wringing my neck 
with both hands&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵ＥＶ101", 500, 1000,  Dxl1, true);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/9000020a01">
"&.&.&.Ghk&, ah&.&.&.!"

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/9000030a05">
"Look at me&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
His thumbs grind into my throat and his low voice rings in my ears&.

Seeing Mink's emotionless face as he strangles me 
instinctively sends dread through me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
If he wanted to kill me&, he could have already&.
So I don't think he's trying to right now&.

The feeling on my skin terrifies me more than his words&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/9000040a01">
"&.&.&.Ow&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,400,0,800,null,false);

	Move("絵ＥＶ100", 500, -549, -181, Dxl3, false);
	FadeDelete("絵ＥＶ101", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
While I'm trying to wriggle away from his grip around my 
throat&, Mink brings his face to my ear&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/9000050a05">
"I'm going to drag the agony from deep inside of you&. I'm
 going to expose your true self lying underneath&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/9000060a01">
"Wha- t&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Mink's lips touch my ear&, moving with the sound of his 
words&.

That voice&.&.&. gradually turns into long breaths&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/9000070a05">
"You know the truth&, don't you? That when you're beaten
 down and controlled&, deep down&, it puts you at ease&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Beaten down and controlled&.&.&.
Deep down&, it puts me at ease&.&.&.?

Mink's words repeat in my head&.

I don't know&.&.&.
I might think that way&.

Ever since I've accepted my defeat and thrown everything 
away&, I've felt more at ease than ever before&.

Not having to fight against anything&, accepting it all&.

If it's like that&, then certainly&.&.&.

I can take in the pain&, the anguish&, and the pleasure&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
If I strike back I'll only suffer&.

I'd rather&.&.&. stop doing everything&.

Dangerous thoughts flicker through my head&.

But to me now&, they're sweet temptations&.

I know well that how at ease you can be when you fall into depravity in hard times&.

And how painful it is to keep resisting&.

So that's why I've been looking the other way and 
pretending&.

I've been thinking that I want to live a calm life 
without being overrun with emotions and without having 
to hide&.&.&.

I can't help but not feel anything after my body and heart have been bent beyond recognition&.

That may be what Mink wants to drag out of me&.

The me he spoke about&, who accepted defeat and exposed 
everything&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_絞める01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵ＥＶ100", 1000, -549, -97, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/9000080a05">
"Throw away your useless pride&. You can't win against me&.
 You never will&. Fall into my arms&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/9000090a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
&.&.&.I'm starting to think that might be a good thing&.

I can never win against him&. Never&.

Then&, I&.&.&. I should just accept that&.

Isn't it all right if I just wash it all away&.&.&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/9000100a01">
"&.&.&.Ah!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
A switch goes off in my head and a different sort of voice spills out from deep inside of me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,400,0,800,null,false);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	Move("絵ＥＶ100", 500, -549, 0, Dxl1, false);
	FadeDelete("絵ＥＶ100", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/9000110a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Mink loosens his grip on my throat&, looks into my eyes for several seconds&, and then moves his face to my shoulder&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");
}
I hear the faint sound of something like sniffing and then he raises his head&.

I could almost sense&.&.&. a small smile on his face&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm33/9000120a05">
"That's fine&. You're going to only look at me&, you little
 shit&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/9000130a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
It sounded like a sweet phrase&, but it wasn't&.

It was an order requiring absolute obedience from the 
loser to the winner&.

But my feeling of defeat started to fade away and my skin 
grew goosebumps to his command&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
It'll be easier if I just accept it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm33/9000140a01">
"Ah&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm3400.nss"]

}
