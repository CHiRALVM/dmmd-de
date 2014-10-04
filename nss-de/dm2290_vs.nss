//<continuation number="270">
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


scene dm2290_vs.nss_MAIN
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
	#evf03防衛ＡＭ立ちふさがる=true;
	#evf03防衛ＡＭ立ちふさがるa=true;
	
	#bg304052_5_東江タワー研究エリア廊下02=true;
	#bg304053_5_東江タワー研究エリア廊下03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2300.nss";

}


scene dm2290_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――

//嶋：ＢＧＭ継続注意
	SoundPlay("@dm018",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg304053_5_東江タワー研究エリア廊下03");
	FadeBG(0,true);

	CreateSE("SE01","se物体_ドア東江自動_扉開く01");//あきゅん「ＳＥ：se物体_ドア東江自動_扉開く01」
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("上背景", 0, null, true);
	DrawDelete("絵色黒", 1000, 100, null, "slide_06_00_0", true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
What was beyond the door had an entirely different 
atmosphere compared to the first floor&.

This floor is white as well&, but it's much longer and much 
more plain&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"stノイズ_通常_normal2");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/9000010a03">
"There's something I need to do here&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE11","se人体_足音_歩く03");//あきゅん「ＳＥ：se人体_足音_歩く03」
	MusicStart("SE11",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Noiz closes his map and walks down the hallway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	OnBG(10,"bg304052_5_東江タワー研究エリア廊下02");
//	FadeBG(1000,true);

	OnBG(10,"bg304051_5_東江タワー研究エリア廊下01");
	FadeBG(1000,true);

	SetVolumeEX("SE11", 300, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
He watches his feet while he walks&, as if he's looking for something&, and stops&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/9000020a03">
"It's here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
Noiz points it out with his chin&.

He leans over to the network panel opening in the wall&. 
Then&, he pulls a cord out of his Coil and plugs it in&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/9000030a01">
"What are you trying to do?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/9000040a03">
"I'm going to reroute this floor's network&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/9000050a01">
"Reroute?"

{	Fw("fwノイズ_通常_normal2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/9000060a03">
"This floor and beyond is off-limits to normal people&. The
 security is tight&, too&. So now I'm going to give off a
 fake signal and keep this floor clear&."

{	Fw("fwノイズ_通常_normal3");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/9000070a03">
"No matter how rough we get&, it'll look like this floor is  perfectly fine&."

{	Fw("fwノイズ_通常_cool2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/9000080a03">
"It'll only work as a temporary measure&, but it's better
 than nothing&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音03");//あきゅん「ＳＥ：se物体_コイル_操作音03」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Noiz pulls out his Coil's monitor display and keyboard&, 
working away&.

{
//あきゅん「ＳＥ：se物体_パソコン_キーボード操作01」
	CreateSE("SE11","se物体_パソコン_キーボード操作01");
	MusicStart("SE11",0,700,0,1000,null,true);}
I watch the words spill onto the screen as he keeps 
tapping away on the keyboard&.

His speed is near godly&, but it still looks like it's 
going to take some time&.

It takes some courage to stay where the enemy is for such  a long period of time&.

I stood there fidgety&, waiting for Noiz to finish&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);
	SetVolumeEX("SE11", 1500, 1, null);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);
	Wait(2500);
	SetVolumeEX("SE11", 1500, 700, null);
	FadeDelete("絵色黒", 1000, null, true);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/9000090a01">
"Are you done yet?"

{	Fw("fwノイズ_通常_angry2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/9000100a03">
"Just a little more&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0038]
Noiz answers without stopping his hands&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	CreateTextureEX("絵ＥＶ", 3100, Center, Middle, "cg/ev/evf03防衛ＡＭ立ちふさがる.jpg");
//	Fade("絵ＥＶ", 0, 1000, null, true);

	CreateSE("SE01","se動物_足音_歩く防衛01");

	CreateWindow("絵マスク", 2000, 0, 100, 1024, 374, false);
	SetAlias("絵マスク","絵マスク");
	Zoom("絵マスク", 0, 1000, 0, null, true);

	CreateTextureEX("マスクライン上", 2000, Center, Middle, "cg/mask/ciウィンドウ横01.png");
	CreateTextureEX("マスクライン下", 2000, enter, Middle, "cg/mask/ciウィンドウ横01.png");


	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("絵マスク/絵背景100", 1000, -139, -668, "cg/ev/l/evf03防衛ＡＭ立ちふさがる_アップ_l.jpg");

	Fade("マスクライン*", 0, 1000, null, false);
	Move("絵マスク/絵背景100", 5000, -624, @0, null, false);
	Move("マスクライン上", 250, @0, 90, null, false);
	Move("マスクライン下", 250, @0, 474, null, false);
	Zoom("絵マスク", 250, 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0039]
A small figure appeared in the hallway while I kept on 
alert&.

It's too small to be human&.

That's&.&.&.<?>
{	Fade("絵ＥＶ", 300, 1000, null, true);
	Delete("マスクライン*");
	Delete("絵マスク/絵背景100");
	Delete("絵マスク");}
	
A dog?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE40","se動物_足音_歩く防衛01L");
	MusicStart("SE40",0,350,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
A slender dog with short black fur calmly walks this way&.

//{	SetVolumeEX("SE40", 3000, 400, null);}
What is that dog?
Is it someone's Allmate?

Either way&, it's still weird&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	SetVolumeEX("@SE40", 0, 0, null);

	FadeDelete("絵ＥＶ", 1000, null, true);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/9000110a01">
"Hey&, Noiz!"

{	Fw("fwノイズ_通常_angry2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/9000120a03">
"I'll be done soon&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/9000130a01">
"No&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE11", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
Maybe it isn't a good idea to talk to him&, he's 
concentrating&.&.&.

I open my bag to ask Ren&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/9000140a01">
"Ren&, what is that? Why is a dog here?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE40", 3000, 700, null);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm22/9000150a06">
"&.&.&.Aoba&, run&. That machine-"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/9000160a01">
"Machine?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se動物_足音_歩く防衛01");

	CreateTextureEX("絵背景", 2000, Center, Middle, "cg/ev/evf03防衛ＡＭ立ちふさがる_アップ.jpg");
	SetVolumeEX("SE40", 300, 0, null);
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
The black dog comes to a stop&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_防衛_開口01");

	CreateTextureEX("絵ズーム", 2000, -164, Middle, "cg/ev/m/evf03防衛ＡＭ立ちふさがる_アップ_m.jpg");
	CreateTextureEX("絵ズーム2", 2000, -164, 0, "cg/ev/m/evf03防衛ＡＭ立ちふさがるa_アップ_m.jpg");
	CreateTextureEX("絵ズーム3", 2000, -164, 0, "cg/ev/m/evf03防衛ＡＭ立ちふさがるa_アップ_m.jpg");
	SetBlur("絵ズーム3", true, 2, 500, 50, false);

	Move("絵ズーム", 300, @0, 0, Dxl1, false);
	Fade("絵ズーム", 300, 1000, null, true);

	SetVolumeEX("@dm*", 300, 0, null);
	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");

	Wait(30);

	Delete("絵背景");
	Delete("絵ズーム");

	Fade("絵ズーム2", 0, 1000, null, true);
	Fade("絵ズーム3", 0, 500, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵ズーム3", 1000, 1500, 1500, Dxl1, false);
	FadeDelete("絵ズーム3", 750, Dxl1, false);
	FadeDelete("絵フラッシュ白", 500, null,true);

	SoundPlay("@dm008",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
&.&.&.And then opens his mouth wide&.

A long&, narrow iron pipe comes out of his deep red mouth&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ズーム2",300,null,true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/9000170a01">
"!"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm22/9000180a06">
"That's a special type of Allmate with crime-prevention
 equipment added to it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_rage",1000,"fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/9000190a01">
"Crime prevention!? Noiz&, run!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateTextureEX("絵ＥＶ", 1100, Center, Middle, "cg/ev/evf03防衛ＡＭ立ちふさがるa.jpg");
	Fade("絵ＥＶ", 300, 1000, null, true);

//あきゅん「↓：分割しました」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
Noiz looks up and immediately begins to run with me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ズーム2", 2000, -393, -50, "cg/ev/l/evf03防衛ＡＭ立ちふさがるa_アップ_l.jpg");

	CreateStencil("マスク１",2100,center,50,128,"cg/ef/effi暴露成功_ef01.png",false);
	CreateColor("マスク１/色１", 2100, 0, 0, 1024, 576, "RED");
	Fade("マスク１/色１", 0, 0, null, true);
	Request("マスク１/色１", MulRender);


	CreateStencil("マスク２",2050,center,50,128,"cg/ef/effi暴露成功_ef01.png",false);
	CreateColor("マスク２/色２", 2050, 0, 0, 1024, 576, "RED");
	Fade("マスク２/色２", 0, 0, null, true);
	Request("マスク２/色２", AddRender);
	Zoom("マスク１", 0, 500, 500, null, true);
	Zoom("マスク１", 0, 1500, 1500, null, true);


	CreateSEEX("SE01","se戦闘_メガ砲_チャージ01");

	Move("絵ズーム2", 300, @0, 0, Dxl1, false);
	Fade("絵ズーム2",300,1000,null,true);

	MusicStart("SE01",0,700,0,2000,null,true);
	Fade("マスク１/色１", 0, 1000, null, false);
	Fade("マスク２/色２", 0, 750, null, false);

	Rotate("マスク２", 5000, @0, @0, -180000, null,false);
	Zoom("マスク２", 500, 5000, 5000, Dxl1, false);
	Fade("マスク２/色２", 500, 0, Dxl1, false);

	Rotate("マスク１", 5000, @0, @0, 180000, null,false);
	Zoom("マスク１", 500, 500, 500, Dxl1, true);

	Wait(200);

	CreateSE("SE02","se戦闘_防衛_発射01");//あきゅん「ＳＥ：se戦闘_防衛_発射01」

	SetVolumeEX("SE01", 0, 0, null);
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorSP("絵色白", 4000, "000000");
	Wait(30);
	Delete("絵ＥＶ");
	Delete("マスク１/色１");
	Delete("マスク２/色２");
	Delete("マスク１");
	Delete("マスク２");
	Delete("絵ズーム2");
	CreateTextureEX("絵演効果", 1100, Center, Middle, "cg/ef/efx04ビーム_防衛01.jpg");
	Fade("絵色白", 70, 0, null, false);
	FadeFR2("絵演効果",0,1000,150,0,0,50,null, true);

//	CreateSE("SE02","se戦闘_防衛_発射01");//あきゅん「ＳＥ：se戦闘_防衛_発射01」
//	MusicStart("SE02",0,700,0,1000,null,false);

//	CreateColorSP("絵色白", 4000, "000000");
//	Wait(30);
//	Delete("絵ＥＶ");
//	CreateTextureEX("絵演効果", 1100, Center, Middle, "cg/ef/efx04ビーム_防衛01.jpg");
//	Fade("絵色白", 70, 0, null, false);
//	FadeFR2("絵演効果",0,1000,150,0,0,50,null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
But the dog is faster than us and sends a bolt of light 
flying straight at us&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：熱ビーム音
//嶋：上に移動しました。

{	Fw("fw蒼葉_通常_shout");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/9000200a01">
"Watch out&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：蒼葉、ノイズのもとに駆け寄って飛び込み、かばう
	CreateSE("SE01","se人体_衝撃_転倒01");//あきゅん「ＳＥ：se人体_衝撃_転倒01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("絵板写", 100);
	Shake("絵板写", 300, 0, 30, 0, 0, 1000, null, false);
	FadeDelete("絵演効果", 50, null, true);

	Fw("fwノイズ_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/9000210a03">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/9000220a01">
"Ouch&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
I push Noiz just barely out of the way and we continue 
running&.

What was that just now?
It was like a beam&.&.&.

{{	CreateSE("SE01","se擬音_水_蒸発硫酸01");
	MusicStart("SE01",0,500,0,2000,null,false);}}
When I lift my chin up&, I see the wall the beam had hit is now a black color&, burning and melting&.

If that had been a direct hit&.&.&. 
I shiver at the thought&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_normal");
	FwPro("fw蒼葉_通常_pinch",1500,"fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0079]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/9000230a01">
"Just in the nick of time&, too&.&.&. Ouch!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1300,null,false);
	SetVolumeEX("SE*", 800, 0, null);

	CreateColorSPmul("絵色赤", 4000, "CC0000");
	Wait(30);
	FadeDelete("絵色赤", 100, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
When I try to get up&, a numbing pain runs up my side&.

I find a scalding burn under my torn shirt on one side of  my body&.

I must've been hit by that beam when I tackled Noiz out of the way&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buノイズ_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/9000240a03">
"That&, you&.&.&."

{	Fw("fw蒼葉_通常_pinch");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/9000250a01">
"Forget about me&, over there!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
I point frantically at the dog while Noiz scowls at my 
wound&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ", 1100, Center, 0, "cg/ev/l/evf03防衛ＡＭ立ちふさがるa_l.jpg");
	Fade("絵ＥＶ", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0087]
The iron pipe out of its mouth is pointed right at us&. 
It's going to shoot the second shot&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0088]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm22/9000260a03">
"-!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE02","se人体_足音_走る03");
	CreateTextureEX("絵ＥＶ", 1100, -361, -268, "cg/ev/ev920ノイズ突進.jpg");
	Request("絵ＥＶ", Smoothing);
	Zoom("絵ＥＶ", 0, 2000, 2000, null, true);
	SetBlur("絵ＥＶ", true, 2, 200, 30, false);

	Fade("絵ＥＶ", 0, 1000, null, false);
	Move("絵ＥＶ", 200, 0, 0, Dxl1, false);
	Zoom("絵ＥＶ", 200, 1000, 1000, null, true);
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
I don't know what he was thinking&, but Noiz dashed up to 
it&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm22/9000270a01">
"Noiz!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_風切り高01");//あきゅん「ＳＥ：se戦闘_打撃_風切り高01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

	Delete("絵ＥＶ");
	DrawDelete("絵黒幕", 150, 100, null, "slide_04_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
Noiz takes out a cube from his side while running and 
pushes it into the dog's mouth&, trying to stop it&.

What is he doing&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ぼふっと篭った暴発音
	CreateSE("SE01","se戦闘_衝撃_爆発小01");//あきゅん「ＳＥ：se戦闘_衝撃_爆発小01」

	SetVolumeEX("@dm*", 500, 0, null);
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainEX("絵板写", 100);

	Wait(16);
	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	Zoom("絵板写", 0, 1200, 1200, null, true);
	FadeFR2("絵板写",0,500,150,0,0,50,null, false);
	Zoom("絵板写", 200, 1000, 1000, null, false);
	Fade("絵板写", 150, 0, null, false);
	FadeDelete("絵フラッシュ白", 100, null,true);

	SetVolumeEX("SE01", 100, 0, null);
	CreateSE("SE02","se擬音_精神_煙る01");
	MusicStart("SE02",0,500,0,750,null,false);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
And suddenly&, smoke fumes out of the dog's mouth&.

{	CreateSE("SE03","se人体_衝撃_転倒02");
	MusicStart("SE03",0,600,0,1200,null,false);}
Its feet jerk and wobble until it falls to the ground&.

That just&.&.&.

Did the cube clog up the pipe and cause it to backfire?

Jeez&, it would've been dangerous if he didn't have that 
perfect timing&. That was seriously terrifying&, sheesh&.&.&.

He's as reckless as he ever was&.
But he did save us&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm2300.nss"]

}
