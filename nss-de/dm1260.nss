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


scene dm1260.nss_MAIN
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
	$GameName = "dm1270.nss";


	RainDropDelete(0);//このコマンドで雨消してください、念のためにファイル出る時にも記載しておいて下さい
	RainDropDelete2(0);//このコマンドで雨消してください、念のためにファイル出る時にも記載しておいて下さい


}


scene dm1260.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

//覇：下記背景、モブの差分ありですか？
	CreateColorSP("絵色黒", 5000, "000000");
	CreateColorSP("絵薄黒", 200, "000000");

	OnBG(10,"bg301021_5_プラチナジェイル中通り1赤");
	FadeBG(0,true);

	CreateTextureSPadd("絵背景", 100, Center, Middle, "cg/bg/bg301021_5_プラチナジェイル中通り1赤.jpg");
	SetShade("絵背景", LIGHT);

	RainDrop(1000,0,16);
	RainDrop2(501,0,64);

	CreateSE("SE11","se環境_自然_雨01L");
	MusicStart("SE11",1500,200,0,1000,null,true);

	Fade("絵薄黒", 0, 400, null, true);

	Delete("上背景");
	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
With the rain and the glittering illuminations from 
decorations&, people still enjoy themselves while walking 
down the wet streets&.

I'm a bit nervous out here&, so I walk on the edge of the 
street&.

The rain is light&, but the feeling of my hair being 
drenched is an upleasant one&.

Even so&, right now I don't have the energy or motivation 
to do anything about it&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵色黒", 5000, "000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSPadd("絵背景", 100, Center, Middle, "cg/bg/bg303011_5_娯楽施設外観入り口レッド.jpg");
	CreateMovieSP("煙１", 200, Center, Middle, true, true, "dx/mvk100.ngs");
	OnBG(10,"bg303011_5_娯楽施設外観入り口レッド");

	SetShade("絵背景", LIGHT);

	Fade("煙１", 0, 500, null, true);
	FadeBG(0,true);

	Zoom("煙１", 0, 3000, 3000, null, true);

	Wait(500);

	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Without thinking about anything&, I just keep on walking&. I eventually end up in front of the club&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/6000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
I don't have any desire to go in&, but I lean on a wall nearit&.

The wall is freezing cold and completely wet&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE11", 1000, 1, null);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 500, 1000, Dxl1, true);
	Fade("絵薄黒", 0, 0, null, true);

	CreateColor("絵演", 3000, 0, 0, 1024, 768, #624a2b);
	SetAlias("絵演","絵演");
	Request("絵演", OverlayRender);
	CreateTextureSPmul("絵演過去", 3001, Center, Middle, "cg/ef/effi回想01.jpg");
	CreateTextureSP("絵演背景", 1500, Center, Middle, "cg/ev/ev124紅雀強姦未遂a.jpg");

	Fade("絵色黒", 1000, 0, Dxl1, true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
Just being outside makes it feel like that incident was 
just a dream&.

But it wasn't&.

I can still feel the pain from Koujaku's grip on my arm&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 500, 1000, Dxl1, true);

	Delete("絵演*");
	Fade("絵薄黒", 0, 400, null, true);

	SetVolumeEX("SE*", 1000, 200, null);
	Fade("絵色黒", 1000, 0, Dxl1, true);

//	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
&.&.&.I wonder if he's going to come back&.

I don't know if he ever will&.

Even if he did&, would he even help me as far as to get to 
Toue?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※濡れた足音（竜峰）
	CreateSE("SE01","se人体_足音_歩く水01ゆっくり");
	MusicStart("SE01",0,450,0,1600,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I wonder about it&, and then suddenly hear the sound of 
water splashing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE01", 1000, 0, null);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);

	CreateTextureSP("絵大背景", 101, -482, Middle, "cg/bg/l/bg303011_5_娯楽施設外観入り口レッド_l.jpg");
	CreateTextureSP("絵大背景裏", 100, -482, Middle, "cg/bg/l/bg303011_5_娯楽施設外観入り口レッド_l.jpg");
	CreateTextureSP("絵大立絵", 700, 0, Middle, "cg/fu/fu竜峰_通常傘_normal.png");
	CreateTextureSP("絵大立絵表", 701, 0, Middle, "cg/fu/fu竜峰_通常傘_normal.png");

	SetShade("絵大背景裏", MEDIUM);
	SetShade("絵大立絵表", HEAVY);

	Delete("煙*");

	Move("絵大背*", 2000, @-30, @0, Dxl1, false);
	Move("絵大立*", 2000, @-100, @0, Dxl1, false);
	Fade("絵大立絵表", 1500, 0, null, false);
	Fade("絵大背景", 1500, 0, null, false);
	SetVolumeEX("SE*", 500, 700, null);
	DrawDelete("絵黒幕", 500, 100, null, "slide_01_00_1", true);

	Wait(2000);

	CreatePlainSP("絵板写", 5000);

	Delete("絵大*");

	CreateMovieSP("煙１", 200, 0, 400, true, true, "dx/mvk100.ngs");
	Zoom("煙１", 0, 3000, 3000, null, true);

	Move("煙１", 0, 270, 230, null, true);

	St("C",740, @0,@0,"bu竜峰_通常傘_pride");
	FadeSt("C",0,true);

	SetVolumeEX("SE*", 2000, 200, null);

	Fade("煙１", 0, 500, null, true);
	FadeDelete("絵板写", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000020b05">
"You're soaked&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
&.&.&.When I turn around&, I see the man in the kimono again&.

He smiles and comes towards me&, offering his umbrella&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu竜峰_通常傘_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000030b05">
"I know it's simply raining&, but what's wrong? Do you enjoy being in the rain?"

{	Fw("fw蒼葉_通常_think");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/6000040a01">
"&.&.&.&.&."

{	St("C",740, @0,@0,"bu竜峰_通常傘_pride");
	FadeSt("C",200,true);}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000050b05">
"What an awful look&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
He grins and tilts his head&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu竜峰_通常傘_smile");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000060b05">
"Has something happened?"

{	Fw("fw蒼葉_通常_worry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/6000070a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE11", 500, 1, null);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 500, 500, null, true);

//あきゅん「演出：このテキストは音声のみで文章出さない」
	//CreateVOICE("竜峰","dm12/6000080b05");
	MusicStart("竜峰",0,1000,0,1000,null,false);
	$SETime = RemainTime("竜峰");
	WaitKey($SETime);
	
<PRE @box0>
[text0044]
//※回想
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000080b05">
"But you should be careful&. You're a little too
 defenseless&. If you're not&, something you take for
 granted will&.&.&.Chomp!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("竜峰", 1000, 0, null);
	Wait(300);

	//CreateVOICE("竜峰","dm12/6000090b05");
	MusicStart("竜峰",0,1000,0,1000,null,false);
	$SETime = RemainTime("竜峰");
	WaitKey($SETime);
	
<PRE @box0>
[text0045]
//※回想
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000090b05">
"They might just gobble you up&, you know?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("竜峰", 1000, 0, null);
	Wait(300);
	Delete("竜峰");

	FadeDelete("絵色黒", 500, null, true);
	SetVolumeEX("SE11", 500, 200, null);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//※回想
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000080b05">
"But you should be careful&. You're a little too defenseless&. If you're not&, something you take for granted will&.&.&. Chomp!"

//※回想
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000090b05">
"They might just gobble you up&, you know?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
It was just like he said&.&.&.

The man lets out a weak sigh at my silence&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu竜峰_通常傘_pride");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000100b05">
"I guess you don't want to tell&. And that's why you're
 standing around here&." 

{	St("C",740, @0,@0,"bu竜峰_通常傘_normal");
	FadeSt("C",200,true);}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000110b05">
"But you'll catch a cold&, you know? You should go home&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
He looks up to the rain&, and then his gaze returns back to me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu竜峰_通常傘_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000120b05">
"Aren't you going to go home?"

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/6000130a01">
"&.&.&.I don't want to go back&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu竜峰_通常傘_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000140b05">
"Oh dear&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
The man suggestively squints his eyes and smiles&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu竜峰_通常傘_pride");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000150b05">
"You'd be a heartbreaker if you said that as a girl&. It's
 not good to stay out here&, so why don't we go get a warm
 drink?"

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/6000160a01">
"Huh? But-"

{	St("C",740, @0,@0,"bu竜峰_通常傘_normal");
	FadeSt("C",200,true);}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000170b05">
"It's right over there&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	DeleteSt("C", 0,true);

	CreateTextureSP("絵背景", 150, Center, InBottom, "cg/bg/m/bg303011_5_娯楽施設外観入り口レッド_m.jpg");

	Fade("煙１", 0, 300, null, true);
	Move("煙１", 0, @0, 170, null, true);
	Move("絵背景", 0, @0, @50, null, true);

	Move("絵背景", 1000, @0, @-50, null, false);
	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
He jerks his chin to the building&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景");
	Move("煙１", 0, @0, 250, null, true);
	Fade("煙１", 0, 500, null, true);

	St("C",740, @0,@0,"bu竜峰_通常傘_pride");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000180b05">
"I'm aquaintances with the owner of that club&. I can get us a private room&."

{	St("C",740, @0,@0,"bu竜峰_通常傘_smile");
	FadeSt("C",200,true);}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000190b05">
"I also don't actually live in Platinum Jail&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
He says that while shrugging his shoulders&.

So he's inviting me to a room&.

{	DeleteSt("C", 300,true);}
&.&.&.What should I do?

Following him sounds fine&.
Even though I don't know his name&.

Why would he do all of this for me anyway?

It seems so strange&.

&.&.&.But my thoughts flicker between going and not going 
with him anyway&.

Koujaku told me not to come close to here&.
And he reacted badly to me talking with this man here&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu竜峰_通常傘_normal");
	FadeSt("C",300,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
Then&, could this man&.&.&.

Does Koujaku know something about him?

It may have just been a coincidence&, and the man starts 
pushing my back&, as if to encourage me to follow his words&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"bu竜峰_通常傘_normal");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000200b05">
"What do you want to do?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
I&.&.&. give a small nod&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu竜峰_通常傘_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0087]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000210b05">
"You must come&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 500, 0, Middle, "cg/bg/l/bg303011_5_娯楽施設外観入り口レッド_l.jpg");

	DeleteSt("C", 0,true);

	SetShade("絵背景", MEDIUM);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 100, null);

	Move("絵背景", 500, @0, @-40, Dxl1, false);
	FadeDelete("絵板写", 500, null, true);

//	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0088]
The man gives another grin and holds onto my shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",1100, @0,@0,"fu竜峰_通常傘_pride");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000220b05">
"Come closer so you don't get wet&. Ah&, would you mind
 telling me your name?"

{	Fw("fw蒼葉_通常_sad");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/6000230a01">
"&.&.&.Aoba&."

{
	St("C",1100, @0,@0,"fu竜峰_通常傘_smile");
	FadeSt("C",200,true);
}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000240b05">
"Aoba&, what a nice name&. Mine is Ryuuhou&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/6000250a01">
"Ryuuhou&.&.&."

{	St("C",1100, @0,@0,"fu竜峰_通常傘_normal");
	FadeSt("C",200,true);}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/6000260b05">
"Yes&. Nice to meet you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景");
	DeleteAllSt(0,true);

	CreateSE("SE01","se人体_足音_歩く水01ゆっくり");
	MusicStart("SE01",0,500,0,1400,null,true);

	Wait(50);

	CreateSE("SE01","se人体_足音_歩く水01ゆっくり");
	MusicStart("SE01",0,500,0,1600,null,true);

	SetVolumeEX("SE11", 5000, 1000, null);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
Ryuuhou's smile fades&, and he starts to pull me along with him&.

&.&.&.Is this really a good idea?

I listen to the sounds of raindrops falling overhead on 
the umbrella as we walk&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);
	SetVolumeEX("@SE*", 2000, 0, null);
	Wait(1000);

	RainDropDelete(0);//このコマンドで雨消してください
	RainDropDelete2(0);//このコマンドで雨消してください

	ClearFadeAll(1000, true);
	Wait(1000);

//※次ファイル["dm1270.nss"]

}
