//<continuation number="240">
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


scene dm4380.nss_MAIN
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
	#ev960クリアα力行使=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4390.nss";

#CFGVC_CLEARALPHA=1;//コンフィグ：クリアαボイス解放

	//▼頭痛レベル設定
	$HALevel=3;

}


scene dm4380.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm005",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg301031_5_プラチナジェイル通り路地01");
	FadeBG(0,true);

	DrawDelete("上背景", 500, 100, Dxl1, "blind_01_00_1", true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/8000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
When I enter the isolated alleyway&, I see a figure with 
silver hair standing around&.

Is it Clear?
&.&.&.I thought correctly&, but he isn't alone&.

There are three people of equal height&.
One stands with his back to me&, while the other two stand 
on the other side of him&.

{	SetVolumeEX("@dm*", 3000, 0, null);}
When I see the faces of the two standing on the other 
side&, I think my eyes are playing tricks on me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	St("MR",740, @0,@0,"stクリアα_通常マスクなし_normal");
	St("ML",740, @0,@0,"stクリアα2_通常マスクなし_normal");
	FadeAllSt(300,true);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵演背景", 1000, Center, Middle, "cg/bg/l/bg301031_5_プラチナジェイル通り路地01_l.jpg");
	CreateTextureSP("絵演背景弐", 1500, Center, Middle, "cg/bg/l/bg301031_5_プラチナジェイル通り路地01_l.jpg");
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/fu/x/fuクリアα2_マスクなし_normal_x01.png");
	CreateTextureSP("絵演立絵弐", 1505, Center, Middle, "cg/fu/x/fuクリアα_マスクなし_normal_x01.png");

	SetShade("絵演背*", MEDIUM);

	Wait(300);

	Move("絵演立絵弐", 1000, @50, @0, Dxl1, false);
	Move("絵演背景弐", 1000, @30, @0, Dxl1, false);
	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

	CreatePlainSP("絵板写", 5000);

	Delete("絵演背景弐");
	Delete("絵演立絵弐");

	Move("絵演立絵", 1000, @-50, @0, Dxl1, false);
	Move("絵演背景", 1000, @-30, @0, Dxl1, false);
	FadeDelete("絵板写", 1000, null, true);

	Wait(500);
	CreatePlainSP("絵板写", 5000);
	Delete("絵演*");
	FadeDelete("絵板写", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
&.&.&.I know both of their faces&.

They look exactly the same as Clear&.
Except they're wearing different clothes than him&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/8000020a01">
"What's going on&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_正面マスクなし_serious");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
He must've heard my voice&, because the figure with his 
back to me turned around&.

&.&.&.He's also Clear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_正面マスクなし_pinch");
	FadeSt("C",200,true);

	Wait(300);

	CreateSE("SE01","se人体_足音_走る01");
	MusicStart("SE01",0,700,0,900,null,false);

	DeleteSt("C", 200,true);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
When that Clear sees my face&, his own goes ghost white&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_正面マスクなし_normal2");
	FadeSt("C",200,true);
	SetVolumeEX("SE*", 0, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/8000030a04">
"Master!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Three of them all have the same face&.&.&.?

When the confusion shows in my expression&, the two others 
start to grin&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

#CFGVC_CLEARALPHA=1;//コンフィグ：クリアαボイス解放

	CreatePlainSP("絵板写", 5000);
	DeleteSt("C", 0,true);

	St("MR",740, @0,@0,"stクリアα_通常マスクなし_pride");
	St("ML",740, @0,@0,"stクリアα2_通常マスクなし_pride");
	FadeAllSt(0,true);

	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm43/8000040b18">
"Did you hear that? He just called him Master&, so that's
 him&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
The two other Clears chuckle&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("C",740, @0,@0,"buクリア_正面マスクなし_sad");
	FadeSt("C",180,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/8000050a04">
"Master&, I'm so sorry&. I didn't mean to involve you&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
The Clear nearest to me looks down wth an apologetic tone&.

When I see his face&, I know that he's the real one&.

His expressions and mannerisms&, and most of all the two 
moles on his chin are proof&.

Then who are those two smiling over there&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("MR",740, @0,@0,"stクリアα_通常マスクなし_shock");
	St("ML",740, @0,@0,"stクリアα2_通常マスクなし_normal");
	FadeAllSt(180,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm43/8000060b18">
"Hey&, get it together and open your eyes already&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
One of the two places his hands on his hips in discontent&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("MR",740, @0,@0,"stクリアα_通常マスクなし_sigh");
	St("ML",740, @0,@0,"stクリアα2_通常マスクなし_normal");
	FadeAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm43/8000070b18">
"I already told you earlier&. That's not your master&. Our
 master is Toue&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/8000080a01">
"&.&.&.Toue?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
My body tenses up from hearing the name so suddenly&.

Clear makes an intense scowl and glares at the two others&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクなし_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/8000090a04">
"That's wrong&. Only this person is my master&.&.&.
 Only Aoba-san&."

{
	St("MR",740, @0,@0,"stクリアα_通常マスクなし_pride");
	St("ML",740, @0,@0,"stクリアα2_通常マスクなし_normal");
	FadeAllSt(200,true);
}
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm43/8000100b18">
"Hah&, he's completely broken&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
The two Clears exchange glances and shrug their shoulders&, then look at me this time&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("MR",740, @0,@0,"stクリアα_通常マスクなし_normal");
	St("ML",740, @0,@0,"stクリアα2_通常マスクなし_normal");
	FadeAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm43/8000110b18">
"We need to collect and repair the broken ones&. But first I want to test out something&."

{	St("MR",740, @0,@0,"stクリアα_通常マスクなし_pride");
	FadeAllSt(200,true);}
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm43/8000120b18">
"I should just dye that human's brain and get it over
 with&."

{	Fw("fwクリア_通常マスクなし_serious2");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/8000130a04">
"&.&.&.No&. I won't let you&."

{
	St("MR",740, @0,@0,"stクリアα_通常マスクなし_shock");
	FadeAllSt(200,true);
}
//【クリアα】
<voice name="クリアα" class="アルファ" src="voice/dm43/8000140b18">
"Stop that&, stay quiet&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	Wait(1000);

	CreateTextureEX("絵背景", 1000, Center, -200, "cg/ev/ev960クリアα力行使.jpg");
	Move("絵背景", 2000, @0, 0, Dxl1, false);
	Fade("絵背景", 2000, 1000, null, true);

	SetVolumeEX("SE*", 2000, 0, null);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
One of them takes a step towards me&.

{	SetVolumeEX("@dm*", 3000, 0, null);}
He opens up his mouth&, and takes a deep breath that 
reaches the bellows of his chest&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面マスクなし_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/8000150a04">
"Stop!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm020",0,450,true);

	CreateTextureEX("絵効果", 2500, Center, Middle, "cg/ef/efクリアαの歌声.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
As the real Clear screams out&, the other one begins to 
sing&.

{
	dm3510song();
	Wait(1000);
}
It's a frightening tune&.&.&. His sharp voice and scale 
pierce through my eardrums&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Zoom("絵効果", 1000, 5000, 5000, Dxl3, false);
	Fade("絵効果", 300, 1000, Dxl3, true);
	dm3510songdelete();
	Delete("絵背景");
	CreatePlainEX("絵霞", 50);
	SetShade("絵霞", MEDIUM);
	Zoom("絵効果", 500, 1000, 1000, Dxl3, false);
	FadeDelete("絵効果", 300, null, true);

	HAFade(2000, 0,false);
	Fade("絵霞", 500, 1000, null, true);


	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/8000160a01">
"&.&.&.Shit! Not this again&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
It's the same song from on TV&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/m/bg301031_5_プラチナジェイル通り路地01_m.jpg");
	SetShade("絵背景", LIGHT);
	Move("絵背景", 500, @0, @-120, Dxl1, false);
	Fade("絵背景", 500, 1000, null, true);
	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 500, 5, 15, 0, 0, 500, null, true);

	CreateTextureEX("絵霞", 500, Center, -264, "cg/bg/m/bg301031_5_プラチナジェイル通り路地01_m.jpg");
	SetShade("絵霞", MEDIUM);

	$ループムーブナット名 = "@絵霞";
	$ループムーブタイム = 25000;
	CreateProcessEX("プロセスメマイ", "FlyMovingXXX");
	Request("プロセスメマイ", Start);

	Fade("絵霞", 500, 600, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0225]
My headache comes back&, and I'm down to my knees&.

The sound swells in my ears&, getting louder and louder 
from both the left and the right&.

I feel so sick and dizzy&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureSP("絵背景下", 50, Center, -214, "cg/bg/m/bg301031_5_プラチナジェイル通り路地01_m.jpg");

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/8000170a01">
"Ugh&.&.&.!"

{	Fw("fwクリア_正面マスクなし_pinch");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/8000180a04">
"Master!"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm43/8000190a06">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0231]
In no time&, I'm writhing on the ground&.

The sharp melody feels like it's cutting my brain to 
pieces&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面マスクなし_angry");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/8000200a04">
"Stop singing that song right now&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
As he watches me writhe in pain&, the other Clear wears 
nothing but a happy look on his face&.

Ren desperately pulls on my clothes with his teeth&, trying to keep me conscious&. But&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm020",1500,1000,true);
	CreateColorEXsub("絵色黒", 5000, "WHITE");
	Fade("絵色黒", 1500, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
Their singing voices ring like overpowering bells in my 
ears&, and I can't think straight anymore&.

This is Grand Music&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm43/8000210a06">
"Aoba! Don't give up!"

{	Fw("fw蒼葉_通常_pain2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/8000220a01">
"&.&.&.!"

{	Fw("fwクリア_正面マスクなし_pinch");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/8000230a04">
"!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_動作_走る01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
I hear the sound of someone stomping the ground&, and the 
air stirs&.

{
	Move("絵背景", 500, @0, @50, Dxl1, false);
	Move("絵霞", 500, @0, @50, Dxl1, false);
	Fade("絵色黒", 500, 300, null, true);
	Delete("@プロ*");
}
When I strain my eyes&, I see Clear running forward&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※クリアがクリアαを思いきり突き飛ばす
	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 150, 1000, Dxl3, true);
	SetVolumeEX("@dm*", 0, 0, null);
	Wait(30);
	FadeDelete("絵色白", 150, Dxl3, true);

	FadeDelete("絵色黒", 500, null, true);

	FadeDelete("絵霞", 500, null, false);
	FadeDelete("絵背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0271]
He pushes away the singing one&, and the song stops&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵背景下", 300, 0, -285, Dxl3, true);

//※バチバチッとクリアの腕に電流が走る

	CreateSE("SE01","se擬音_効果_火花02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEXadd("絵演出", 6000, Center, Middle, "cg/ef/efx02火花電光02.jpg");
	Zoom("絵演出", 0, 1100, 1100, null, true);
	FadeFF("絵演出", 100, 1000, 300, 0, 0, Dxl3, false);

	Wait(100);

	FadeDelete("絵演出", 100, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0272]
&.&.&.What!?

That wasn't my imagination just now&, was it&.&.&.
Sparks just flew out of Clear's arm&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",40, @0,@0,"stクリア_正面マスクなし_pinch");
	FadeSt("C",0,true);

	FadeDelete("絵背景下", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/8000240a04">
"&.&.&.Guh-!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4390.nss"]

}
