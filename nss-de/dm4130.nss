//<continuation number="430">
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


scene dm4130.nss_MAIN
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
	#ev413クリア裸エプロン=true;
	#bg302031_5_グリッターバーカウンター=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4140.nss";

}


scene dm4130.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302031_5_グリッターバーカウンター");
	FadeBG(0,true);

	CreateTextureEX("絵一枚絵", 500, -190, 0, "cg/ev/l/ev413クリア裸エプロン_人物クリアと背景_l.jpg");
	CreateTextureEX("絵一枚絵弐", 110, Center, Middle, "cg/ev/ev413クリア裸エプロン.jpg");
	CreateTextureEX("絵一枚絵参", 100, Center, Middle, "cg/ev/m/ev413クリア裸エプロン_人物クリアと背景_m.jpg");
	CreateTextureEX("絵一枚蒼葉", 105, InRight, -10, "cg/ev/m/ev413クリア裸エプロン_人物蒼葉_m.png");
	CreateTextureEX("絵一枚蒼葉震", 107, InRight, -10, "cg/ev/m/ev413クリア裸エプロン_効果ゲジゲジ_m.png");

	Kirakirakirakira_Set(2000, 350, 500, "cg/ev/ev413クリア裸エプロン_効果キラキラ.png", "cg/ev/m/ev413クリア裸エプロン_効果キラキラ_m.png", "cg/ev/m/ev413クリア裸エプロン_効果キラキラ_m.png");

	Request("絵一枚絵弐", Smoothing);
	Request("絵一枚絵参", Smoothing);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	Fw("fwクリア_通常マスクあり_normal");
	ClearComicNext(20001,85,411,3,"");
}
//【クリア】※漫符：おはな？
<voice name="クリア" class="クリア" src="voice/dm41/3000010a04">
"Ah&, Master&. Good morning!"

{	ClearComicNexDelete();
	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000020a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	ClearComicNexDelete();
	TextBoxDelete(0);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 1000, 1000, null, true);

	CreateTextureSP("絵泡", 510, 0, 0, "cg/ev/ev413クリア裸エプロン_効果シャボン01.png");
	CreateTextureSP("絵泡弐", 509, 300, 300, "cg/ev/ev413クリア裸エプロン_効果シャボン01.png");
	CreateTextureSP("絵泡参", 508, 20, 500, "cg/ev/ev413クリア裸エプロン_効果シャボン02.png");
	CreateTextureSP("絵泡四", 507, 200, 190, "cg/ev/ev413クリア裸エプロン_効果シャボン02.png");
	CreateTextureSP("絵泡五", 506, 500, 200, "cg/ev/ev413クリア裸エプロン_効果シャボン03.png");
	CreateTextureSP("絵泡六", 505, 200, 350, "cg/ev/ev413クリア裸エプロン_効果シャボン04.png");
	CreateTextureSP("絵泡七", 504, 900, 50, "cg/ev/ev413クリア裸エプロン_効果シャボン04.png");
	CreateTextureSP("絵泡八", 503, 270, -170, "cg/ev/m/ev413クリア裸エプロン_効果シャボン01_m.png");
	CreateTextureSP("絵泡九", 502, 500, 150, "cg/ev/l/ev413クリア裸エプロン_効果シャボン01_l.png");
	CreateTextureSP("絵画像", 100, -512, -576, "cg/ev/l/ev413クリア裸エプロン_l.jpg");

	FadeDelete("絵色白", 2000, Axl1, false);

	Wait(500);

	CreateSE("SE01","se擬音_コミカル_キラキラ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵泡", 3500, @300, @0, null, false);
	Move("絵泡弐", 3000, @250, @0, null, false);
	Move("絵泡参", 4000, @700, @0, null, false);
	Move("絵泡四", 2000, @200, @0, null, false);
	Move("絵泡五", 3000, @200, @0, null, false);
	Move("絵泡六", 4000, @200, @0, null, false);
	Move("絵泡七", 3000, @-100, @0, null, false);
	Move("絵泡八", 2500, @300, @0, null, false);
	Move("絵泡九", 2500, @-800, @0, null, false);

	FadeDelete("絵泡", 1800, Axl3, false);
	FadeDelete("絵泡弐", 1200, Axl3, false);
	FadeDelete("絵泡参", 2000, Axl3, false);
	FadeDelete("絵泡四", 700, Axl3, false);
	FadeDelete("絵泡五", 2500, Axl3, false);
	FadeDelete("絵泡六", 3000, Axl3, false);
	FadeDelete("絵泡七", 2300, Axl3, false);
	FadeDelete("絵泡八", 2200, Axl3, false);
	FadeDelete("絵泡九", 2500, Axl3, true);

	Kirakirakirakira_Fade();

	Wait(500);

	Move("絵画像", 3000, -190, 0, AxlDxl, true);

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Something really&, really strange stood in front of me&.

The only things that covered it were a cute apron&, a gas 
mask&, and a pair of gloves&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEXadd("絵色白", 10000, "WHITE");
	Fade("絵色白", 500, 1000, null, true);
	Delete("絵プロ*");
	Delete("プロ*");
	Delete("絵画像");
	Fade("絵一枚絵参", 0, 1000, null, true);

	CreateTextureSP("絵霞", 101, Center, Middle, "cg/ev/m/ev413クリア裸エプロン_人物クリアと背景_m.jpg");
	SetShade("絵霞", HEAVY);

	Move("絵霞", 0, @-50, @0, null, true);
	Move("絵一枚蒼葉", 0, @100, @0, null, true);

	Fade("絵一枚蒼葉", 0, 1000, null, true);

	Move("絵霞", 500, @50, @0, Dxl1, false);
	Move("絵一枚蒼葉", 500, @-100, @0, Dxl1, false);
	FadeDelete("絵色白", 500, Dxl1, true);

	Fade("絵一枚蒼葉震", 300, 1000, Dxl3, false);
	CreateSE("SE01","se擬音_コミカル_ポイ01");
	MusicStart("SE01",0,700,0,800,null,false);
	Shake("絵一枚蒼葉", 300, 1, 1, 0, 0, 1000, Dxl1, true);

	CreateSE("SE01","se擬音_コミカル_ポイ01");
	MusicStart("SE01",0,700,0,800,null,false);
	Shake("絵一枚蒼葉", 100, 1, 1, 0, 0, 1000, Dxl1, true);
	CreateSE("SE02","se擬音_コミカル_ポイ01");
	MusicStart("SE02",0,700,0,800,null,false);
	Shake("絵一枚蒼葉", 200, 1, 1, 0, 0, 1000, Dxl1, true);

	FadeDelete("絵霞", 1000, null, true);

	Wait(1000);

	CreateSE("SE01","se擬音_効果_ドン01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵一枚絵弐", 0, 1000, null, false);
	Zoom("絵一枚絵弐", 200, 2500, 2500, Dxl3, false);
	Wait(150);
	Zoom("絵一枚絵弐", 200, 1000, 1000, Dxl3, true);

	Wait(500);

	SoundPlay("@dm003",0,450,true);

	Delete("絵一枚蒼*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
I shake my head - mostly out of embarrassment - as Clear 
still stands there&, almost butt naked&, holding a knife 
in the kitchen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/3000030a04">
"Breakfast preparations are almost done&, so please sit
 down&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000040a01">
"&.&.&.&.&."

{	DeleteFw();}
//【クリア】※漫符：キラキラ？
<voice name="クリア" class="クリア" src="voice/dm41/3000050a04">
"Did you sleep well last night? Wasn't your room sparkling? I took the time to finish cleaning while you were asleep&,  Master～♪"

//{	Fw("fw蒼葉_通常_hard");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000060a01">
"&.&.&.You know&,"

{	DeleteFw();
	ClearComicNext(800,213,122,3,"fw");}
//【クリア】※漫符：おはな
<voice name="クリア" class="クリア" src="voice/dm41/3000070a04">
"Yes&, what is it&, Master?"

{	ClearComicNexDelete();}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000080a01">
"&.&.&.Are you retarded!?!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ごすっとクリアに回し蹴り

	CreateTextureEX("絵一枚絵参", 1000, 0, InBottom, "cg/ev/m/ev900蒼葉蹴り汎用_m.jpg");
	CreateColorEXadd("絵色白", 5000, "WHITE");

	CreateSE("SE01","se戦闘_打撃_風切り高01");
	MusicStart("SE01",0,700,0,1200,null,false);
	Move("絵一枚絵参", 180, @-288, @288, Axl2, false);
	Fade("絵一枚絵参", 180, 1000, Dxl1, true);

	SetVertex("絵一枚絵", 380, 250);


	Fade("絵色白", 200, 1000, Dxl3, true);

	Delete("絵一枚絵弐");
	Delete("絵一枚絵参");

	Fade("絵一枚絵", 0, 1000, Dxl3, true);
	CreateSE("SE02","se戦闘_打撃_ヒット低02");
	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("絵一枚絵", 200, 1500, 1500, Axl3, false);
	FadeDelete("絵色白", 200, Axl2, true);

	Wait(50);
	FadeDelete("絵一枚絵", 0, Dxl3, true);

	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,1000,null,false);

	BGPlainShake(500,300,0,5,0,0,1000,Dxl1,true);

	Fw("fwクリア_通常マスクあり_normal");
	ClearComicNext(20001,77, 313,2,"");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【クリア】※漫符：うに？
<voice name="クリア" class="クリア" src="voice/dm41/3000090a04">
"Ouch!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	ClearComicNexDelete();
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Still somewhat horrfied from the scene&, I thoughtlessly 
give Clear a roundhouse kick&. 

Clear's jaw recieves a harsh blow and he falls to the 
floor and starts to cry&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
	ClearComicNext(21000,58,358,16);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【クリア】※漫符：ズーン
<voice name="クリア" class="クリア" src="voice/dm41/3000100a04">
"So- So mean&.&.&. I was working so hard for you&, Master!"

{	ClearComicNexDelete();
	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000110a01">
"Your idea of working hard is friggin' weird!"

{	Fw("fwクリア_通常マスクあり_normal");
	ClearComicNext(21000,58,358,16);}
//【クリア】※漫符：ズーン
<voice name="クリア" class="クリア" src="voice/dm41/3000120a04">
"But don't they say that a man's romantic fantasy is some-
 one naked in an apron cooking for them? So I thought you'd
 like it too!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
	ClearComicNexDelete();

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000130a01">
"Where did you learn that!? Anyway&, go and change out of
 that freaking apron!"

{	Fw("fwクリア_通常マスクあり_normal");
	ClearComicNext(21000,58,358,16);}
//【クリア】※漫符：ズーン
<voice name="クリア" class="クリア" src="voice/dm41/3000140a04">
"Unngh&, yes&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	ClearComicNexDelete();
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Clear gets up&, still crying&, and leaves the counter&. 

He looks pathetic in that apron&. And his ass is still 
showing&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000150a01">
"Sheesh&, what was he thinking? That's so messed up&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm41/3000160a06">
"Surely that was an example of 'Don't cover your head and
 leave your bottom bare'&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000170a01">
"&.&.&.Yeah&, that's for sure&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(1000,true);

	Delete("絵*");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg302021_5_グリッター居間.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
I give Clear a sidelong glance when he comes back into the room&. Sighing&, I sit on the sofa&.

On the table in front of me is an entire menu's worth of 
breakfast foods piled up&.

&.&.&.This is amazing&. It all looks delicious&.

But Clear's the one who made all of this&.&.&.

I don't know how it tastes just by staring at it either&, 
so all of this might even taste awful&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se擬音_効果_空腹01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0124]
&.&.&.I'm hungry&.

Because of the smells&, my empty stomach roars&, and I 
timidly reach for the fork&.

I stab something that looks like chicken&, and prepare 
myself&.&.&. <k>I bring it up to my mouth&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000180a01">
"&.&.&.Tasty&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fuクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/3000190a04">
"Isn't it?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000200a01">
"Whoa!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreatePlainSP("絵板写", 5000);
	DeleteSt("C", 0,true);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵板写", 500, 0, 10, 0, 0, 500, Dxl1, false);
	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
Clear suddenly appears in front of me and I throw myself 
back&.

That was dangerous&, especially while I was holding this 
fork&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000210a01">
"You surprised me&.&.&. Don't scare me like that&."

{	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/3000220a04">
"I'm sorry&. But I did change clothes!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000230a01">
"Did you make all of this?"

{	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/3000240a04">
"Yes&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000250a01">
"Is that so&.&.&."

{	DeleteFw();}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/3000260a04">
"Is it good? It's delicious&, right? You did say that
 earlier&."

{
	Fw("fw蒼葉_通常_sigh");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000270a01">
"Well&.&.&. Yeah&. It's good&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【クリア】※漫符：ケラケラ
<voice name="クリア" class="クリア" src="voice/dm41/3000280a04">
"Oh&, that's great! My effort paid off for you&, Master!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
Clear claps his hands together in high spirits&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000290a01">
"Did you take lessons on cleaning or cooking?"

{	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/3000300a04">
"Half of it was self taught&. Some of it was because I took
 care of Grandpa&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000310a01">
"Oh&, I see&. But how did you get all these ingredients?"

{	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/3000320a04">
"I got them from somewhere like a supermarket&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000330a01">
"You 'got' them?"

{
	DeleteFw();
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/3000340a04">
"Yes&. Everyone here gives things to others freely&."

{	Fw("fw蒼葉_通常_cranky3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000350a01">
"Huh&.&.&. Of course the enlightened people under Toue-sama
 would do something like that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
As I speak&, I give into my hunger and start eating things 
one by one off the table&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/3000360a04">
"That corn soup over there is something I'm very confident
 in&. It's full of creamed corn&."

{	FwPro("fw蒼葉_通常_think",2150,"fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000370a01">
"&.&.&.Mhm&, it's great&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",0,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/3000380a04">
"And I also thought I made this omelette well&. How is it?"

{	FwPro("fw蒼葉_通常_think",2750,"fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000390a01">
"&.&.&.Delicious&."

{	DeleteFw();}
//【クリア】※漫符：ケラケラ
<voice name="クリア" class="クリア" src="voice/dm41/3000400a04">
"That's wonderful～!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateSE("SE01","se人体_衝撃_叩く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵板写", 300, 5, 30, 0, 0, 500, Dxl2, false);
	FadeDelete("絵板写", 300, null, true);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000410a01">
"Wait! We don't have the time to enjoy elegant breakfasts
 like this!!"

{	St("C",740, @0,@0,"stクリア_正面マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】※漫符：ガーン
<voice name="クリア" class="クリア" src="voice/dm41/3000420a04">
"W-Wah! Watch out&, Master!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/3000430a01">
"&.&.&.Ah&, my bad&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
The table could have flipped over if I had gotten up too 
roughly&.

It would have been bad to ruin all of this delicious food&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4140.nss"]

}
