//<continuation number="180">
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


scene dm5640.nss_MAIN
{
$TEXTBOX_TYPE="暴露白";
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
	#ev564蒼葉、黒を認める=true;
	#ev564蒼葉、黒を認めるa=true;

	#MF_mv5640a=true;
	#MF_mv5640b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5650.nss";

}


scene dm5640.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg210011_2_暴露海と砂浜");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg211011_0_精神世界セイ.jpg");

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
As I hang my head in shame&, the pure white field began to 
fill with color&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateMovieEX("絵動画110", 110, Center, Middle, false, false, "dx/mv5640a.ngs");
	Fade("絵動画110", 1000, 1000, null, true);

	Delete("絵背景100");

	CreateSE("SE02","se環境_自然_波01L");
	MusicStart("SE02",10000,700,0,1000,null,true);

//セイの精神世界から、暴露海と砂浜に移動したら、白蒼葉の立ち絵も黒蒼葉に戻していいんじゃないかなー、ここボックス黒に戻るし（千代子
//cono「演出：修正しました」

	MovieSkipPlay("絵動画110","MF_mv5640a");
	//Wait(12000);

	FadeDelete("絵動画110", 2000, null, true);

	Wait(1000);

$TEXTBOX_TYPE="Scrap";

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
In a single blink&, the white space turned into an evening 
sea&. This is&.&.&.

{
	SetVolumeEX("SE02", 3000, 0, null);
	SetStream("@dm012*", 15360);
	SoundPlay("@dm012",4000,450,true);
}
I remember it from my childhood&.
It feels like a very important place&.

I'd always talk with someone while sitting on the beach 
and staring at the sea&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	CreateSE("SE01","se擬音_回想_フラッシュバック02");
//	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ110", 110, -732, -406, "cg/ev/l/evf10記憶の中の父の影_l.jpg");
	Fade("絵ＥＶ110", 250, 1000, null, true);

	FadeDelete("絵ＥＶ110", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
That's&.&.&.

&.&.&.Father?

&.&.&.Oh&, yes&.
I remember&.

I'd always speak to my friends inside my head&, with my 
heart and mouth closed to the other people around me&.

The one who set me free from that was my father&.

I had no blood relation because I was born in a lab&, but 
he was my father&.

The man who opened up my world and showed me the light&.

"It's all right&. You can always destroy this world any 
time&."


He said that to me&.

{
	St("C",740, @0,@0,"st黒蒼葉_通常_normal");
	FadeSt("C",200,true);
}
Right now&.&.&. "I" am standing where my father was&.

The pure white "me" had looked exactly like me this time&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蓮_通常マントなし_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/4000010a06">
"Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Ren looks at me with serious eyes&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蓮_通常マントなし_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/4000020a06">
"We were once all part of one whole&. Then you&, me&, and him
 separated&."

//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/4000030a06">
"We can't unite or else you'll turn into the personality
 you were in the begninning&. In short&, we'll disappear&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蓮_通常マントなし_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/4000040a06">
"But I gained a will&. You acknowledged me as another
 existence&. You accepted me&. So I won't disappear&."

{
	Fw("fw蓮_通常マントなし_normal2");
}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm56/4000050a06">
"But he&.&.&. he's always been lamenting over you not
 accepting him&, over not being able to return to you&.
 Always&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
When I look over to the other me&, the "me" that was once 
expressionless had a somewhat helpless face on&.

I always thought he was a hostile thing&.

That he wouldn't stop at trying to take over me&.

But I may have been wrong&.

That's what I thought when I looked at the expression of 
the other me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/4000060a01">
"&.&.&.I was scared of you using Scrap&. I thought that
 breaking into peoples' minds was the same thing as
 killing them&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/4000070a01">
"I was scared of myself using it&.&.&. No&, I was scared of
 myself becoming a person that had a sense of superiority
 because of my power&."

{
	Fw("fw蒼葉_通常_sad");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/4000080a01">
"When I had that incident in Rhyme and knew it was like
 that&, I was incredibly afraid&. So I got rid of it&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/4000090a01">
"So I forgot that I could use Scrap&. But that ended up with me denying you&."

{
	Fw("fw蒼葉_通常_worry");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/4000100a01">
"I didn't look into myself&, and lived a peaceful life&.&.&.
 I always thought that way&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/4000110a01">
"But you're me&, so I hated that I let myself forget&. So
 that's why you appeared whenever I used Scrap&. To tell me
 that 'I' was here&."

//if unclear, by "appeared" he means why the other Aoba took over him when he used scrap&. so he'd notice him

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st黒蒼葉_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm56/4000120b01">
"&.&.&.&.&."

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/4000130a01">
"While you rose up&, I thought you were against me&. I jumped to that conclusion and refused you&.&.&."

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/4000140a01">
"Sei said it earlier&. That he had one regret&. I
 misunderstood you&."

{
	Fw("fw蒼葉_通常_serious");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/4000150a01">
"So I won't run away or deny you any more&. You're right
 here inside of me&. In the past&, in the present&, always&."

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/4000160a01">
"I'm sorry for all that I did&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写１", 10000);

	DeleteAllSt(0,true);

	FadeDelete("絵板写１", 1000, null, false);

	CreateTextureEX("絵ＥＶ120", 120, -373, -573, "cg/ev/l/ev564蒼葉、黒を認める_l.jpg");
	Move("絵ＥＶ120", 1000, -115, -573, Dxl1, false);
	Fade("絵ＥＶ120", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
When I finished talking&, I walked up to "myself"&.

His body faintly quivers and I take a deep breath&.

When I get closer to him&, I could see all of the emotion 
in his eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Move("絵ＥＶ120", 2000, -371, -103, Dxl1, true);

	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
He slowly raised his hands&.

I rose mine to his&.&.&. and lightly touched his palms&.

A small warmth grew between our hands&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ121", 121, Center, Middle, "cg/ev/ev564蒼葉、黒を認める.jpg");
	Fade("絵ＥＶ121", 1000, 1000, null, true);
	Delete("絵ＥＶ120");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
His unsteady eyes reflected in mine and his lips moved 
ever so slightly&.

//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm56/4000170b01">
"&.&.&.Thank you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se擬音_効果_力白蒼葉消滅");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "FFFFFF");
	Fade("絵色白", 2000, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
With a hoarse voice&.&.&.
He bursts into a dazzling light&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm56/4000180a01">
"&.&.&.-!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	Fade("絵色白", 500, 1000, null, true);
	FadeDelete("絵色白", 5000, null, false);

	CreateSE("SEmv","se蒼葉白消滅");
	MusicStart("SEmv",0,850,0,1000,null,false);
	
	CreateMovieSPvol("絵動画122", 122, Center, Middle, false, false, "dx/mv5640b.ngs",0);
	Delete("絵ＥＶ121");
	CreateTextureSP("絵ＥＶ120", 120, Center, Middle, "cg/ev/ev564蒼葉、黒を認めるa.jpg");

	MovieSkipPlay("絵動画122","MF_mv5640b");
	//Wait(18000);

	SetVolumeEX("SE*", 2000, 0, null);
	FadeDelete("絵動画122", 2000, null, true);
	Delete("絵動画122");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
When I opened my eyes&, "I" was no longer there&.

//if "I" isn't as obvious, replace it with "the other me"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5650.nss"]

}
