//<continuation number="1120">
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


scene dm0380.nss_MAIN
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
	#ev038婆ちゃんとみんなでご飯=true;
	#ev038婆ちゃんとみんなでご飯a=true;

	#bg104031_5_蒼葉宅自室点灯荒らし=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	if($クリア選択肢2==1){	$GameName = "dm0384.nss";
	}else {		$GameName = "dm0390.nss";
	}

}


scene dm0380.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

//あきゅん「演出：前ファイルでコミカル締めしたので導入部分調整しました」

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg104021_5_蒼葉宅台所");
	FadeBG(0,true);

//※演出：場面転換

	Delete("上背景");
	DrawDelete("絵色黒", 1000, 10, null, "turn_01_00_1", true);

	FwMask(7,208,"cg/ev/m/ev038婆ちゃんとみんなでご飯_m.jpg");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/8000010a03">
"&.&.&.&.&."

{	FwMask(-1060,235,"cg/ev/m/ev038婆ちゃんとみんなでご飯_m.jpg");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000020a02">
"&.&.&.&.&."

{	FwMask(-875,200,"cg/ev/m/ev038婆ちゃんとみんなでご飯_m.jpg");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000030a01">
"Ouch&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Following Granny's orders&, we headed downstairs and sat 
silently at the table&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵マスク枠", 110, 0, 0, "cg/mask/ciスラッシュ_05_00z.png");

	CreateMask("絵マスク右", 100, 0, 0, "cg/mask/ciスラッシュ_05_01.png", true);
	SetAlias("絵マスク右","絵マスク右");
	CreateTextureSP("絵マスク右/絵ＥＶ100", 100, -486, -25, "cg/ev/m/ev038婆ちゃんとみんなでご飯_m.jpg");

	SoundPlay("@dm003",0,450,true);

	DrawDelete("絵板写", 500, 100, null, "blind_02_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
My head hurts&.&.&. Granny hit me&.<k>
{
	CreatePlainSP("絵板写", 5000);
	CreateMask("絵マスク左", 100, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureSP("絵マスク左/絵背景", 100, -86, -76, "cg/ev/m/ev038婆ちゃんとみんなでご飯_m.jpg");
	DrawDelete("絵板写", 500, 100, null, "blind_02_00_1", true);
}
Of course&, everyone else got the same treatment&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景EV01", 10, Center, Middle, "cg/ev/ev038婆ちゃんとみんなでご飯.jpg");
	Fade("絵背景EV01", 0, 1000, null, true);

	FadeDelete("絵マスク枠",10,null);
	Move("絵マスク右",500,@1024,@0,Dxl1,false);
	Move("絵マスク左",500,@-1024,@0,Dxl1,true);

	Delete("絵マスク*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Every one of us was at fault&, so as a result we were all 
hit - and now there are large bumps on our heads&.

When I saw Granny going over to hit the man in green 
earlier&, I was afraid he would fight back&, but even though 
he was in an openly bad mood he didn't really say anything&.

I wonder why? Because his opponent was a delicate old 
person? Or maybe it was something completely different&.&.&.

When Granny asked me how all of this happened in the first 
place&, I confessed to forgetting to lock the front door 
again&.

Then I was also given a bump on the head&.

I'll make sure to never forget to lock the front door 
again&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景EV02", 1000, -60, -120, "cg/ev/l/ev038婆ちゃんとみんなでご飯_l.jpg");
	Fade("絵背景EV02", 500, 1000, null, true);
	Delete("絵背景EV01");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【クリア】※漫符：ばんそうこう
<voice name="クリア" class="クリア" src="voice/dm03/8000040a04">
"I never thought I'd be hit too!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
That reminds me&, this gas mask guy said his name was Clear when I met him before&.

He has the same suspicious presence as the man in green&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Delete("絵背景EV100");

	Fw("fwタエ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/8000050b03">
"Aoba&, come over here for a minute!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se物体_椅子_引く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵背景EV02", 500, null, true);

	FwMask(-875,200,"cg/ev/m/ev038婆ちゃんとみんなでご飯_m.jpg");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000060a01">
"Yeah&, yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Granny calls me into the kitchen and I stand up from my 
chair while rubbing the bump&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se環境_動作_料理揚げ物01L");
	MusicStart("SE01",1000,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Earlier&, I heard the sound of something being fried and a 
sweet smell filled the air&.

Now&, when I look at Granny's hands&, I see doughnuts piled 
in a basket covered with kitchen paper&.

So she really was cooking things for us&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	St("C",740, @0,@0,"buタエ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/8000070b03">
"Bring that&. Everyone's fine with tea&, right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_confuse",1400,"fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000080a01">
"Yes&, yes&. Oh&, by the way&, Granny&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buタエ_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/8000090b03">
"What?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000100a01">
"Is it okay for you to be up already? How's your hip?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buタエ_通常_shock");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/8000110b03">
"Can't you tell by looking? Stop babbling on and go
 already&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Granny drives me off and I return to the table with the 
doughnuts&. Then&, I fill everyone's teacups and return to 
my own seat&.

After a while&, Granny comes to sit down too&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/8000120b03">
"When people are full&, their anger will naturally subside&.
 Eat already&."

{	Fw("fw紅雀_通常_smile2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000130a02">
"So these are for us? I could tell what you were making by
 the smell&. Your doughnuts are exceptional&, Tae-san&."

{	Fw("fwタエ_通常_sigh");}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/8000140b03">
"Just hurry up and eat&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵中一枚絵", 500, -548, -70, "cg/ev/m/ev038婆ちゃんとみんなでご飯a_m.jpg");
	Request("絵中一枚絵", Smoothing);
	Zoom("絵中一枚絵", 0, 1050, 1050, null, true);
	Fade("絵中一枚絵", 1000, 1000, null, true);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureSP("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev038婆ちゃんとみんなでご飯a.jpg");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Koujaku&, who knows the smell of Granny's doughnuts well&, 
immediately reaches out to the basket&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureSP("絵大一枚絵", 300, 0, 0, "cg/ev/l/ev038婆ちゃんとみんなでご飯a_l.jpg");

	Move("絵中一枚絵", 1500, @292, @0, AxlDxl, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
The man in green and the gas mask guy keep staring at the 
doughnuts as if they're completely alien objects&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/8000150b03">
"If you're going to eat then eat&, if not&, then don't&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
The gas mask guy can't eat if he doesn't remove the mask&, 
and the man in green doesn't even seem to want to eat in 
the first place&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵中一枚絵", 1500, 36, @0, AxlDxl, true);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
I didn't think he would&, but surprisingly enough he picks 
up a doughnut&. He still looks grumpy but he starts to 
nibble at his doughnut&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//ノイズ
//	FwMask(0,200,"cg/ev/m/ev038婆ちゃんとみんなでご飯a_m.jpg");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/8000160a03">
"They're sweet&."

//{	FwMask(-595,150,"cg/ev/m/ev038婆ちゃんとみんなでご飯a_m.jpg");}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/8000170b03">
"That's a given&. It's that kind of food&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//ノイズ
//	FwMask(0,200,"cg/ev/m/ev038婆ちゃんとみんなでご飯a_m.jpg");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/8000180a03">
"But it's still sweet&."

//{	FwMask(-595,150,"cg/ev/m/ev038婆ちゃんとみんなでご飯a_m.jpg");}
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/8000190b03">
"You don't have to force yourself to eat it&."

//{	FwMask(0,200,"cg/ev/m/ev038婆ちゃんとみんなでご飯a_m.jpg");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/8000200a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
Granny snorts&, displeased&.
The man continues gnawing at his doughnut&.

It's completely impossible to read what this guy is 
thinking&.

I then look at the gas mask guy&.&.&. to Clear&, and it looks 
like he hasn't moved at all&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000210a01">
"You're not going to eat? Granny's doughnuts are
 delicious&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/8000220a04">
"I'll eat&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000230a01">
"Then I guess you'd better hurry?"

{	DeleteFw();}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/8000240a04">
"Yes&, I'll eat&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
Clear keeps still&.

If he can't eat if he doesn't take off his mask&, will he 
still take one?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_00_0.png", true);

	Delete("絵中一枚絵");
	Wait(500);

	Move("絵大一枚絵", 500, @0, @-150, Dxl1, false);
	DrawDelete("絵黒幕", 500, 100, Dxl1, "slide_02_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
Expecting something to happen&, I continue to stare at 
Clear while lightly sipping my tea&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000250a01">
"&.&.&.Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
I realize a doughnut from Clear's side of the basket is 
now gone&.

{
	CreateSE("SE01","se擬音_コミカル_プニプニ01");
	MusicStart("SE01",0,500,0,1500,null,false);
}
And&.&.&. I think his mask is moving up and down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000260a01">
"You&.&.&. Did you just eat one?"

{
	CreateSE("SE01","se擬音_コミカル_プニプニ01");
	MusicStart("SE01",0,500,0,1500,null,false);
	DeleteFw();
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/8000270a04">
"Yes&, I did&. They're delicious&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000280a01">
"&.&.&.Maybe it's a super power&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
Did he eat it while wearing his gas mask?
How?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	Delete("絵大一枚絵");
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
&.&.&.Well&, let's not go there&.

I grab a doughnut and start eating too&.

Granny's doughnuts are good even when cooled down&, but when
they're freshly made&, a special&, gentle sweetness will 
flow through your mouth when you take a bite&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se物体_椅子_引く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵ＥＶ100", 500, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
As I taste my doughnut&, Koujaku&, who's already finished 
eating&, stands up&.

He turns around before going into the hallway and beckons 
me to come over&.

Me?

When I point to myself&, Koujaku nods several times&.

What is it?

I lower my half-eaten doughnut and stand up to go into the hallway with Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm002",0,450,true);

	OnBG(10,"bg104011_5_蒼葉宅玄関");
	FadeBG(1000,true);

	St("C",740, @0,@0,"st紅雀_通常太刀なし_fake");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000290a02">
"&.&.&.Phew&. Everything got really confusing all of a sudden&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
I guess he wanted to escape the strange atmosphere in the 
living room&. He lets out a sigh&, maybe because he only 
feels comfortable away from everyone else&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000300a01">
"Yeah&, that's for sure&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",740, @0,@0,"st紅雀_通常太刀なし_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000310a02">
"Anyway&, about Mizuki&. Did you contact or meet with him
 at all?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000320a01">
"Yeah&, I called him&. He said he was fine&, but&.&.&. I felt
 like he wasn't as energetic as before&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常太刀なし_cool");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000330a02">
"Really&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000340a01">
"Did something happen to Mizuki?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常太刀なし_cranky3");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000350a02">
"Well&, I told you that Mizuki was acting strange&, didn't I?
 Around then&, members of my team and members of Dry Juice
 had some trouble&."

{	St("C",740, @0,@0,"st紅雀_通常太刀なし_cool2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000360a02">
"Mizuki was also there&. Hasn't he always tried to negotiate these things out before?"

{	St("C",740, @0,@0,"st紅雀_通常太刀なし_cool");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000370a02">
"For some reason&, he seemed kind of absentminded and kept
 spacing out&, and he just watched the fight without trying
 to stop it&. In the end I had to stop it instead&." 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常太刀なし_cool2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000380a02">
"I thought Mizuki looked strange&, and asked if he was all
 right&. When I did&, he gave me this "Leave me alone!"
 glare&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000390a01">
"Mizuki did?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常太刀なし_think");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000400a02">
"Yeah&. He didn't look like his usual self&, seemed like he
 was brooding over something&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fw("fw蒼葉_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000410a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常太刀なし_cool2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0114]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000420a02">
"Aoba&, can't you remember anything? Has he been having any
 trouble recently?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000430a01">
"&.&.&.Earlier&, when I was at Mizuki's shop&, we did talk about the mysterious disappearances&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常太刀なし_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000440a02">
"Ah&. The rumors about entire Rib teams disappearing&,
 right&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000450a01">
"I think he was really worried about that&." 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常太刀なし_cool2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000460a02">
"I've definitely heard that there are teams that have
 disappeared&, but&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	Fw("fwAMウサギモドキ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0124]
//【ウサギモドキ】
<voice name="ウサギモドキ" class="ウサギモドキ" src="voice/dm03/8000470c09">
"Morphine! Morphine!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000480a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常太刀なし_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000490a02">
"Ah!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ウサギモドキのキューブが床に落ちる
	CreateSE("SE01","se動物_動作_落ちるウサギモドキ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
Both Koujaku and I are surprised when we suddenly hear a 
high pitched voice&.

Something right behind my back falls on the floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSPTate("絵マスク中", 2010);//ナット名、優先度

	CreateTextureSP("絵マスク中/絵背景", 100, -350, -406, "cg/bg/l/bg104011_5_蒼葉宅玄関_l.jpg");
	CreateTextureSP("絵マスク中/絵立絵", 500, Center, Middle, "cg/bu/buAMウサギモドキ_通常_normal.png");
	CreateColorSP("絵マスク中/絵薄黒", 110, "000000");

	SetShade("絵マスク中/絵背景", MEDIUM);

	Fade("絵マスク中/絵薄黒", 0, 300, null, true);

	FadeDelete("絵板写", 100, null, false);

	OpenTateMask("絵マスク中",200, 1000,Dxl3,true);//所要時間、水平倍率、テンポ、待ち

	SoundPlay("@dm005",0,450,true);

	Wait(500);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0133]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000500a01">
"That thing&.&.&. It's his!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0134]
What rolls on the floor is one of the cubes that rabbit 
headed man had attached to his waist&. Was it in the hood 
of my jacket&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ウサギモドキのキューブがぴょんぴょん
	CreateSE("SE01","se動物_足音_歩くウサギモドキ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CloseTateMask("絵マスク中",200,Dxl3,true);//ナット名、所要時間、テンポ、待ち

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
The cube hops back towards the living room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000510a01">
"That guy&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常太刀なし_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000520a02">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_足音_歩く05");
	MusicStart("SE01",0,700,0,1400,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0143]
Koujaku chases after the cube into the living room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 990);

	OnBG(10,"bg104051_5_蒼葉宅居間");
	FadeBG(0,true);

	FadeDelete("絵板写", 300, null, true);

	Fw("fw紅雀_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0144]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000530a02">
"Hey&, you little shit&. You were eavesdropping just now&,
 weren't you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	DeleteSt("C", 0,true);
	St("C",730, @0,@0,"buノイズ_通常_normal3");
	FadeSt("C",0,true);

	CreateTextureSP("絵背景", 100, -288, -70, "cg/bg/m/bg104051_5_蒼葉宅居間_m.jpg");

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/8000540a03">
"It's not like it was something worth going to the trouble
 of asking about&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_angry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000550a02">
"Bastard&.&.&."

{	St("C",730, @0,@0,"buノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/8000560a03">
"Like the mysterious diappearances&. Rib's not trendy
 anymore these days&, so doesn't it feel like they're just
 holding some exciting event?"

{	Fw("fw紅雀_通常_angry2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000570a02">
"What'd you say?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
Koujaku's voice shows clear anger&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_angry");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000580a02">
"Hey&, it's not a joking matter&. There really are teams that haven't returned&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",730, @0,@0,"buノイズ_通常_normal3");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0153]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/8000590a03">
"I dunno&. Doesn't it only mean it's better to stop doing
 Rib if you're scared?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_angry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000600a02">
"You bastard&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
Koujaku becomes angry and the man looks back at him even 
more coldly&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0162]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000610a02">
"You&, what's your name?"

{	St("C",730, @0,@0,"buノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/8000620a03">
"It's good manners to give your own name first&."

{	Fw("fw紅雀_通常_angry");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000630a02">
"An asshole like you probably doesn't even have any
 manners&, why should I have to?"

{	St("C",730, @0,@0,"buノイズ_通常_angry");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/8000640a03">
"Then don't ask&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000650a01">
"Wait a minute&. This doesn't need to get ugly&. He's
 Koujaku&. And you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",730, @0,@0,"buノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/8000660a03">
"&.&.&.Noiz&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ノイズ紹介演出
//voice/ex/0000070c06

	Profile("ノイズ", "ex/0000070c06");

{	Fw("fw紅雀_通常_angry2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0172]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000670a02">
"No one likes little shits like you&."

{	St("C",730, @0,@0,"buノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/8000680a03">
"I don't really care if you like me or not&."

{	Fw("fw紅雀_通常_angry3");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000690a02">
"Son of a bitch&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	Fw("fwタエ_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/8000700b03">
"That's enough&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreatePlainSP("絵板写", 5000);
	DeleteAllSt(0,true);
	Delete("絵背景");
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
Granny&, who'd remained silent until now&, suddenly cuts off 
all hostility between the two with a single sentence&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",730, @0,@0,"stタエ_通常_shout");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0182]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/8000710b03">
"If you're going to fight&, do it elsewhere&. You're so noisy I can't stand it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_worry2");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0183]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000720a02">
"&.&.&.Sorry&, Tae-san&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	Wait(500);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,500,0,1000,null,false);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0184]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/8000730a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm002",0,450,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0185]
Glancing at the apologizing Koujaku&, Noiz stands up in 
silence&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000740a01">
"Hey&, where are you going?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal3");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/8000750a03">
"Home&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0192]
As soon as he mutters that he leaves the living room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwタエ_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0193]
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm03/8000760b03">
"And the rest of you&, if you've finished eating&, go back 
 home&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,500,0,1200,null,false);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0194]
Clear rises to Granny's voice and bows&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0195]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/8000770a04">
"It was delicious&. Well then&, Master&, goodbye&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000780a01">
"Ah&, wait a sec&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
Clear exits the living room into the hallway as I chase 
after him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg104011_5_蒼葉宅玄関");
	FadeBG(1000,true);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0202]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/8000790a04">
"Yes&, what is it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0203]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000800a01">
"Whether we meet again or not&.&.&. If there's a second time&,
 come in normally&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0204]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/8000810a04">
"Normally?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0205]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000820a01">
"Don't fall from the sky or come in through the veranda&,
 normally people come in through the front door&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/8000830a04">
"Why can't I come from the sky or the veranda?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000840a01">
"It's just weird&, okay? And startling&. It's bad for the
 heart&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0212]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/8000850a04">
"Bad for the heart&.&.&. I see&. I understand&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0213]
Clear raises his hand with a "Yes!"&, and then puts it to 
his chest&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicNext(800,430, 171,17,0);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0214]
//【クリア】※漫符：ハートかおはな？
<voice name="クリア" class="クリア" src="voice/dm03/8000860a04">
"It's about the heart here&, right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
	ClearComicNexDelete();

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0215]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000870a01">
"Ah&.&.&. Well yeah&, but&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/8000880a04">
"When I'm with Master&, I learn a lot&. Thank you very much&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000890a01">
"&.&.&.Really&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0222]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/8000900a04">
"Until next time&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0223]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000910a01">
"Yeah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se物体_蒼葉宅玄関_扉開くゆっくり01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0224]
Bowing once again&, Clear leaves from the entryway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	St("C",740, @0,@0,"st紅雀_通常_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0225]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000920a02">
"What's up with that gas mask guy&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0226]
Koujaku returns to the hallway from the living room&, 
muttering about Clear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000930a01">
"I don't know&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0231]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000940a02">
"He's not someone you know?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0232]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000950a01">
"Someone I know&, well&.&.&. I don't think so&. I don't really
 know him&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_sad");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0233]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000960a02">
"Hey&, hey&, keep it together&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0234]
Koujaku looks amazed&. But unexpectedly&, he rubs his neck 
with one hand as if he's embarrassed&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_worry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000970a02">
"I'm sorry about earlier&. I just kind of snapped&. It would
 be nice if you could tell Tae-san too&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8000980a01">
"You apologized earlier&, I think it's fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_think2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0242]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8000990a02">
"And I'm sorry for going nuts like that in your room&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0243]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8001000a01">
"Ah&, well&, it's over already&. It's been a while since I've
 seen you so angry&, though&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_worry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0244]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8001010a02">
"I'm no good with guys like that who don't know how to
 compromise&." 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
Koujaku sighs with defeated expression&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_cool");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8001020a02">
"I remembered it just now&, but&.&.&. isn't he in a Rhyme
 team?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0252]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8001030a01">
"Rhyme team?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ロゴ", 1000, Center, Middle, "cg/ef/eflラフラビッツ.jpg");
	Fade("絵ロゴ", 500, 1000, null, true);

	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0253]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8001040a02">
"Yeah&. I think it was named "Ruff Rabbit"&. Before&, when our team and members of another team had a fight&, I remember
 seeing him there&."

//{Fw("fw紅雀_通常_cranky");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8001050a02">
"He seemed to know I was doing Rib too&, so I guess I'm
 right&. The more I think about it&, the worse it makes me
 feel&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_cranky");
	FadeSt("C",0,true);

	FadeDelete("絵ロゴ", 500, null, true);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0254]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8001060a01">
"So Rhyme has teams too&. I didn't know that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_cool");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8001070a02">
"I think they only started forming teams recently&. They're
 probably doing it to gather information more easily&. It
 just bothers me&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0261]
In Rib there are lots of guys who think that being 
teammates equals being family&, but Rhyme might be 
different in that aspect&.

Dry and efficient&.
Just by looking at Noiz it's clear enough&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0262]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8001080a02">
"Well&, putting that guy aside&, I'll make it so I can help
 out Mizuki too&. If you know anything&, give me a call&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0263]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8001090a01">
"Okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0264]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/8001100a02">
"See ya&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
Koujaku raises one hand and walks out the front door&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0271]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8001110a01">
"&.&.&.Whew&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);

	OnBG(10,"bg104031_5_蒼葉宅自室点灯荒らし");
	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0272]
After seeing Koujaku off&, I return to my room feeling a 
little weak&.

Maybe I'm so tired because of all of the things that 
happened today&.

Oh&, right&, I forgot to tell Koujaku that it was Noiz who 
had pulled me in the Rhyme&.&.&.

But if I tell him&, the next time he sees Noiz he'll do 
nothing but pick a fight&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_蒼葉宅照明_点灯01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵色黒", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0275]
Thinking over the day's events&, I open the door while a 
feeling of weakness washes over me&.

I already know my room is a disaster&, but I can't help 
thinking about how bad it is&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/8001120a01">
"Dammit&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0281]
Everything's been crazy lately&.
I remember Noiz's cocky attitude and a bit of anger perks
up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateColorSP("絵色黒", 5000, "000000");
	DrawTransition("絵色黒", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0282]
I decide to only pick up things that had fallen on the 
ground&, and afterwards I plop myself down on the bed&.

I'll clean the rest tomorrow&. Yeah&, tomorrow&. 
I've already had too much excitement for one day&.

I take a deep breath and close my eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(0, true);
	Wait(3000);

//※次ファイル["dm0384.nss"]「選択肢：屋根から何か音がした（クリアポイント＋１）」の場合差し込み
//※次ファイル["dm0390.nss"]

}
