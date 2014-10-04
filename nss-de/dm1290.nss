//<continuation number="540">
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


scene dm1290.nss_MAIN
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
	#ev129紅雀、顔の刺青を見せる=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1290sl.nss";

}


scene dm1290.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg303031_5_娯楽施設竜峰の部屋");
	FadeBG(0,true);
	CreateTextureSP("絵背景", 101, Center, -576, "cg/bg/l/bg303031_5_娯楽施設竜峰の部屋_l.jpg");
	CreateTextureSP("絵背景弐", 100, Center, -576, "cg/bg/l/bg303031_5_娯楽施設竜峰の部屋_l.jpg");

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I have to take this chance to&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ16");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵背景", 1000, @0, @20, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I put all my strength into my arms and feet to try to get 
up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵背景", 200, @0, @-20, Dxl1, true);
	Shake("絵背景", 300, 0, 15, 0, 0, 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
But I lose it almost right away&.

My mouth is also dried up&, and it hurts to swallow my 
saliva&.

Right now is the time to get away&, but&.&.&.!


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/9000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
//※かちゃ…とドアをそっと開ける音
	CreateSE("SE01","se物体_ドア鉄_扉開く01a");
	MusicStart("SE01",0,300,0,800,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
While trying to squirm away&, I hear the door open&.

Is Ryuuhou back?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※蓮のたたたた、という足音
	CreateSE("SE01","se動物_足音_走る蓮01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I hear something pad onto the tatami mat&, and then 
something lightly touches my naked back&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 0, 0, null);
	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm12/9000020a06">
"Aoba!"

{	Fw("fw蒼葉_通常_shock3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/9000030a01">
"&.&.&.Ren!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人物_動作_舐める01");
	MusicStart("SE01",0,600,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
A little lump of blue fur stands in front of me&, and it 
licks my face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/9000040a01">
"Ren&, why are you here?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm12/9000050a06">
"I slipped out of your bag on the way and went to get
 someone to save you&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/9000060a01">
"Save me? Who&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※畳の上を歩く紅雀
	CreateSE("SE01","se人体_足音_走る02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);
	SetVolumeEX("SE*", 1000, 0, null);

	//Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000070a02">
"Aoba&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/9000080a01">
"Koujaku&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm12/9000090a06">
"It was a difficult task to find Koujaku&."

{	Fw("fw蒼葉_通常_confuse");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/9000100a01">
"Ren&.&.&. You're the best&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Ren's tail wags happily&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵霞", 200, -809, 160, "cg/bg/l/bg303031_5_娯楽施設竜峰の部屋_l.jpg");

	St("C",740, @0,@0,"fu紅雀_通常_cool2");
	FadeSt("C",0,true);

	Request("絵霞", Smoothing);
	Zoom("絵霞", 0, 1300, 1300, null, true);

	SetShade("絵霞", MEDIUM);

	Move("@StNameC/C*", 0, @0, @-30, null, true);
	Move("絵霞", 0, @0, @-10, null, true);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameC/C*", 500, @0, @30, Dxl1, false);
	Move("絵霞", 500, @0, @10, Dxl1, false);
	FadeDelete("絵板写", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000110a02">
"Aoba&, are you okay?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
Koujaku leans over me and looks at my face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se擬音_回想_フラッシュバック02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写１", 10000);

	CreateTextureSP("回想1000", 1000, Center, Middle, "cg/ev/ev124紅雀強姦未遂a.jpg");

	CreateColorSP("回想色", 5000, "#624a2b");
	Request("回想色", OverlayRender);

	CreateTextureSPmul("回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");

	FadeDelete("絵板写１", 300, null, true);

	CreatePlainSP("絵板写２", 10000);

	Delete("回想*");

	Wait(200);

	FadeDelete("絵板写２", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
What happened at Glitter passes though my head for a 
moment&.

&.&.&.But it left as soon as I saw the worrying look on 
Koujaku's face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu紅雀_通常_cool");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000120a02">
"Can you move?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/9000130a01">
"I can't get up&. He slipped me something&.&.&."

{	St("C",740, @0,@0,"fu紅雀_通常_cool2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000140a02">
"Just wait a second&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1100,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

	CreatePlainSP("絵板写", 5000);

	DeleteAllSt(0,true);

	Delete("絵霞");
	Delete("絵背*");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg303031_5_娯楽施設竜峰の部屋_m.jpg");
	Move("絵背景", 0, @0, @-50, null, true);

	Move("絵背景", 500, @0, @50, Dxl1, false);
	FadeDelete("絵板写", 500, null, true);

	CreateSE("SE02","se人体_動作_抱く01");
	MusicStart("SE02",0,700,0,1000,null,false);

//	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Koujaku fixes my shirt down&, and puts my arms on his 
shoulders&.

Holding onto my waist&, he slowly raises me up&.

{	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);}
I take Koujaku's help&, and somehow manage sitting in an 
upright position on the futon&.

I feel like I'm going to fall over because my limbs are 
still numb&, and breathing is still difficult&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_sad");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000150a02">
"Does it hurt?"

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/9000160a01">
"I'm fine&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_angry3");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000170a02">
"Anyway&, this room&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵演出", 1000, 0, Middle, "cg/bg/l/bg303031_5_娯楽施設竜峰の部屋_l.jpg");

	Move("絵演出", 4500, @-400, @0, AxlDxl, false);
	Fade("絵演出", 1000, 1000, null, true);
	DeleteAllSt(0,true);

	Wait(1500);

	FadeDelete("絵演出", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
Koujaku looks around the room with a disgusted look on his face&.

When he sees the tattoo designs and the tools laying next 
to the futon&, his eyebrows furrow&. 

I notice that Koujaku is quiet&, but still most certainly 
angry&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_通常_think");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000180a02">
"&.&.&.Damn&, this room is disgusting&. Let's get out of here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
I notice Koujaku's stiff expression loosen&, and he pulls 
me up with my arms around his shoulders&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ドアが開く音
	CreatePlainSP("絵板写", 5000);

	Delete("絵背景");
	DeleteAllSt(0,true);

	CreateSE("SE01","se物体_ドア鉄_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
At that moment&.&.&.

The door opens&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/9000190a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st竜峰_通常_shock");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/9000200b05">
"Oh my&."

{	Fw("fw紅雀_通常_angry");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000210a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
Ryuuhou pauses and stares at the both of us&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",1740, @0,@0,"st竜峰_通常_pride");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/9000220b05">
"A burglar came while the head of the house was out? That's quite impressive&."

{	Fw("fw紅雀_通常_angry2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000230a02">
"&.&.&.&.&.Motherfucker&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	DeleteAllSt(180,true);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"st紅雀_通常_angry");
	FadeSt("C",180,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
Koujaku looks at Ryuuhou with an intense scowl and stands 
up&.

The room is filled with a bizarre air of hostility 
surrounding Koujaku&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_angry4");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000240a02">
"I've finally found you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
&.&.&.Eh?

'I've finally found you'&.&.&.
What's going on?

Ryuuhou puts his fingers to his mouth&, a habit he has when he's thinking&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw竜峰_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/9000250b05">
"Sorry to be rude&, but who are you? You seem like one of
 Aoba-kun's acquaintances&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_angry4");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000260a02">
"Don't play dumb&. Don't you fucking say you forgot&. It's
 your fault I&.&.&."

{	Fw("fw竜峰_通常_shock");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/9000270b05">
"My fault?"

{	St("C",740, @0,@0,"st紅雀_通常_shout");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000280a02">
"Don't tell me you forgot&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, Dxl1, "cg/data/zoom_01_00_0.png", true);

	DeleteSt("C", 0,true);

	CreateStencil("絵覆",5002,center,InBottom,128,"cg/ev/ev129紅雀、顔の刺青を見せる_刺青.png",false);
	SetAlias("絵覆","絵覆");
	CreateColorEX("絵覆/絵色赤", 5001, "800000");

	CreateTextureSP("絵ＥＶ", 1500, Center, Middle, "cg/ev/ev129紅雀、顔の刺青を見せる.jpg");

	Wait(500);

	Fade("絵覆/絵色赤", 1500, 1000, null, true);

	CreateColorSPsub("絵色黒", 5000, "WHITE");

	Wait(700);

	Delete("絵黒幕");

	FadeDelete("絵覆/絵色赤", 1500, Dxl2, false);
	FadeDelete("絵色黒", 1500, Dxl2, true);

	Delete("絵覆*");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
Koujaku pulls back the long hair that hangs over his eye&.

It's always hidden the right side of his face&, but now 
exposed and even illuminated by the light of the oil lamp&.&.

There was&.&.&. a tattoo&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/9000290a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
Not only on his back&, but his face&.&.&.

When Koujaku shows his tattoo&, Ryuuhou's face warps and 
his eyes light up&.

He grins&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw竜峰_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/9000300b05">
"&.&.&.I was just pretending on purpose&. There's no way I'd
 ever forget your tattoos&, Koujaku&."

{	Fw("fw竜峰_通常_pride");
	SoundPlay("@dm008",0,450,true);}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/9000310b05">
"When I drew on your then scarless skin&, when I was never
 able to complete&.&.&. my greatest work&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateTextureEX("絵画像", 2000, -350, -100, "cg/ev/l/ev129紅雀、顔の刺青を見せる_l.jpg");
	Move("絵画像", 500, @-30, @0, Dxl1, false);
	Fade("絵画像", 500, 1000, null, true);

	Delete("絵ＥＶ");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000320a02">
"Shut the hell up&. What were you doing to Aoba?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fw竜峰_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/9000330b05">
"I didn't do anything&. Not yet&. You came at the worst
 possible time to interrupt me&. Good timing&, I must say&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000340a02">
"&.&.&.&.&."

{	Fw("fw竜峰_通常_pride");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/9000350b05">
"I noticed that you came into Platinum Jail&. Weren't you
 here on the dance floor two days ago? I saw you&."

{	Fw("fw竜峰_通常_normal");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/9000360b05">
"But I didn't call out to you&. There wouldn't be any  
 meaning in you trying to chase me down&, then&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000370a02">
"Bastard&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵画像", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0115]
Koujaku sounds uncontrollably angry&.

Compared to Ryuuhou&, who's been calm and arguably enjoying this the whole time&.

The tattoos on Koujaku's face and back&.

Were those&.&.&. from Ryuuhou?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st竜峰_通常_pride");
	FadeSt("C",200,true);

//	Fw("fw竜峰_通常_pride");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/9000380b05">
"To not be warped is to be straight and smooth&. Those sort
 of things can also be said to be pure&, and easy to
 completely distort&. There's no fighting it&."

{	St("C",1740, @0,@0,"st竜峰_通常_pride");
	FadeSt("C",0,true);}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/9000390b05">
"In which way would I have to use the needle&, how would I
 be able to get your steadfast and honest heart to twist to
 it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",1740, @0,@0,"st竜峰_通常_pride");
	FadeSt("C",200,true);

//	Fw("fw竜峰_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/9000400b05">
"I wanted to see that&, and put my entire body and soul to
 your work&. But it's still not enough for me&, even now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000410a02">
"Shut the fuck up!"

{	St("C",1740, @0,@0,"st竜峰_通常_smile");
	FadeSt("C",200,true);
//	Fw("fw竜峰_通常_smile");
}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/9000420b05">
"Ahaha&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
Ryuuhou laughs at Koujaku&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",1740, @0,@0,"st竜峰_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0133]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/9000430b05">
"Did you forget my warning? I'm pretty sure I told you to
 be careful back then&. Are you sure your rage isn't just
 your way of showing your love to me?"

{	Fw("fw紅雀_通常_angry3");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000440a02">
"&.&.&.&.&."

{	St("C",1740, @0,@0,"st竜峰_通常_pride");
	St("C",1740, @0,@0,"st竜峰_通常_mad");
	FadeSt("C",200,true);
	FadeStPro("C", 9700, 200);
}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/9000450b05">
"But&, you really did come to find me&. I'm flattered by your persistence&. Amazed&, really&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0136]
While Ryuuhou speaks&, he takes a step back&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_angry2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0137]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000460a02">
"Bastard&.&.&.! Trying to run!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw竜峰_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/9000470b05">
"I guess I haven't gone mad&. I want to see it with my own
 eyes at last&."

{
	Fw("fw竜峰_通常_pride");
}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/9000480b05">
"You can be as angry as you want with me&. We both are
 preparing ourselves for what's next&."

{
	St("C",740, @0,@0,"st紅雀_通常_shout");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000490a02">
"Ryuuhou!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0143]
Ryuuhou nimbly turns away and leaves the room&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※バタン！とドアが閉まる音
	CreateSE("SE01","se物体_ドア鉄_扉開く01b");
	MusicStart("SE01",0,500,0,1000,null,false);

	Wait(500);

	Fw("fw紅雀_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0144]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000500a02">
"Wait!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/9000510a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ17");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
Koujaku starts to go after him&.
I quickly grab onto the hem of his kimono&.

He can't chase after him now&.
I don't know why&, but I know he can't&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_pain");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0153]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000520a02">
"-Let go!!"

{	Fw("fw蒼葉_通常_hard2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/9000530a01">
"I won't&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_shout2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/9000540a02">
"Ryuuhou&.&.&.!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

	CreateSE("SE01","se人体_動作_衣擦れ25");
	MusicStart("SE01",0,600,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ02");
	MusicStart("SE02",0,700,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
The vibration of Koujaku's roar vibrates through my 
stomach&, and I shake it off&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm1290sl.nss"]

}
