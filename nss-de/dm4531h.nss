//<continuation number="1850">
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


scene dm4531h.nss_MAIN
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
	#ev453クリアとH前戯=true;
	#ev453クリアとH前戯a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4532h.nss";

}


scene dm4531h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm015",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, 0, -574, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");

	FadeDelete("上背景", 0, null, true);

	Fw("fw蒼葉_通常_shock4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000320a01">
"You can do whatever you want&."

{
	Fw("fwクリア_正面崩壊裸_normal2");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000330a04">
"Aoba-san&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000340a01">
"So&.&. just don't say it like it's your last request&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 5, 0, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
Clear gives me another troubled smile&.
Unable to reply&, I silently embrace him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("絵ＥＶ200", 200, -884, -303, "cg/ev/l/ev453クリアとH前戯_l.jpg");
	Move("絵ＥＶ200", 1000, -738, -570, Dxl1, false);
	Fade("絵ＥＶ200", 1000, 1000, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
Clear and I slowly change places&, and I'm now the one 
leaning against the wall&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureSP("絵ＥＶ110", 110, Center, Middle, "cg/ev/ev453クリアとH前戯.jpg");
	FadeDelete("絵ＥＶ200", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000350a01">
"Clear&, your body&.&.&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000360a04">
"I'm fine&. Anyway&, is this really okay?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000370a01">
"It's fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000380a04">
"Really?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000390a01">
"&.&.&.Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("絵ＥＶ111", 111, 0, -246, "cg/ev/l/ev453クリアとH前戯_l.jpg");
	Move("絵ＥＶ111", 1000, -200, -246, Dxl1, false);
	Fade("絵ＥＶ111", 1000, 1000, null, true);
	Delete("絵ＥＶ110");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000400a04">
"&.&.&.&.&."

Clear breathes out&, overflowing with emotion&, and slowly 
brings his face closer to mine&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ111", 2000, -545, -561, Dxl1, true);

	Wait(500);

	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 500, 0, null);

	Wait(1000);

	CreateSE("SE02","se人体_動作_キス01");
	MusicStart("SE02",0,500,0,1200,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
When I close my eyes&, something soft touches my lips&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000410a01">
"Mn&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
Clear's body temperature goes through his hands to my 
cheeks&.

{
	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE01", 500, 0, null);
	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,500,0,1400,null,false);
	SetVolumeEX("SE02", 1000, 0, null);
}
I put my hands into his&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000420a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	CreateSE("SE01","se物体_紙_丸める01");
//	MusicStart("SE01",0,500,0,1400,null,false);
//	SetVolumeEX("SE*", 200, 0, null);

	FadeDelete("絵ＥＶ111", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
When I touch him&, some of his skin peels away and leaves 
me shocked&.

No&.&.&. we should stop now&.
Clear&, who is caught up in the moment&, takes notice of my 
hesitation&.

He must've guessed as to what I meant&, and shook his head 
from side to side&, leaning into my neck&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ112", 112, -168, -197, "cg/ev/l/ev453クリアとH前戯_l.jpg");
	Move("絵ＥＶ112", 1000, -168, -103, Dxl1, false);
	Fade("絵ＥＶ112", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000430a04">
"I'm fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000440a01">
"But-"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000450a04">
"I'd rather be able to touch you&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000460a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
Do I want to help Clear&, or do I grant his wish?

The two feelings conflict inside of my heart&.

But I can't stop here&.

Because Clear doesn't want that&.

So this is fine&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,500,0,1400,null,false);

	CreateTextureEX("絵ＥＶ120", 120, -172, -34, "cg/ev/l/ev453クリアとH前戯a_l.jpg");
	Move("絵ＥＶ120", 1000, -172, -123, Dxl1, false);
	Fade("絵ＥＶ120", 1000, 1000, null, true);
	Delete("絵ＥＶ112");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
As if to drown out my thoughts&, Clear brings his lips to 
my cheek&, my jaw&, and then to my neck&.

I'm embarrassed by the sound of the kisses&, and even 
ticklish&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000470a01">
"&.&.&.Ah!"

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000480a04">
"Can I touch you here as well?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
Clear pulls his lips away from my collarbone and gently 
places his hand on my stomach&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0143]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000490a01">
"&.&.&.I said that you could do whatever you wanted&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000500a04">
"Thank you very much&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,600,0,800,null,false);

	Move("絵ＥＶ120", 1500, -172, -394, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
He rolls up his shirt sleeve&, and his cold&, inhuman hand 
pushes against my body&.

Clear's entire hand is now just machine&, and when I see it&,
the sadness welling up inside of me causes my breath to 
stop&.

The fact that Clear is slowly rotting away and dying is 
reality&. It hurts to realize this&.

But I quickly shake off those feelings&.

&.&.&.Because&,

Even though he's rotting away&, I want him to touch me more&.

I want him to touch me and know every inch of my body&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000510a01">
"Nn&.&.&. Ah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
Clear runs his hands around every nook of my body&, 
carefully&, softly feeling my skin&.

His fingertips cause my muscles to tense&, and he follows 
down the grooves of my bones&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ120", 1000, -172, -494, Dxl3, false);

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("絵ＥＶ121", 121, Center, Middle, "cg/ev/ev453クリアとH前戯a.jpg");
	Fade("絵ＥＶ121", 500, 1000, null, true);
	Delete("絵ＥＶ120");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000520a01">
"Ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
The palms of his hands go down my chest&, and he slowly 
starts to rub my nipples&.

He licks my collarbone&, and I start to feel strange&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,600,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("絵ＥＶ122", 122, -228, 0, "cg/ev/l/ev453クリアとH前戯a_l.jpg");
	Move("絵ＥＶ122", 1000, -424, -219, Dxl1, false);
	Fade("絵ＥＶ122", 1000, 1000, null, true);
	Delete("絵ＥＶ121");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0162]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000530a01">
"&.&.&.Hah&.&.&.Ah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0163]
I pull my arms over Clear to his back&, pull him closer&, 
and muffle my voice into his shoulder&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0164]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000540a04">
"&.&.&.You feel so warm&. And you feel nice and soft&. But are
 you starting to sweat?"

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000550a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
My face goes hot as he explains every detail&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000560a01">
"You don't have to commentate on everything&. It's
 embarrassing&.&.&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000570a04">
"I understand&. But please let me touch you some more&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0172]
Clear continues his gentle touch&, and I can feel myself 
push my chest outward as he rubs it&.
It's as if he really is memorizing the shape of my body&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,500,0,1000,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateTextureEX("絵ＥＶ123", 122, 0, -569, "cg/ev/l/ev453クリアとH前戯a_l.jpg");
	Move("絵ＥＶ123", 1500, -336, -569, Dxl1, false);
	Fade("絵ＥＶ123", 1500, 1000, null, true);
	Delete("絵ＥＶ122");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0173]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000580a01">
"&.&.&.Oh&, gh&.&.&."

//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000590a04">
"Aoba-san&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_ベルト外す01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 300, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
Clear's hands smoothly glide down my abdomen and stop at 
my belt&. He touches the buckle of my belt and it clinks&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000600a04">
"&.&.&.I want to touch you here&. Please let me&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ*", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0182]
He passionately whispers into my ear and tries to undo my 
belt with one hand&. He hurries and can't undo it quite 
right&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shy3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0183]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000610a01">
"&.&.&.Wait&. I'll do it&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_ベルト外す01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0184]
I pull back Clear's hands&, and unfasten my belt myself&.

He must have a lot of consideraton for me&, as he hesitates&.

Clear draws back his mechanical hand and touches my cock 
through my underwear with the hand that still has skin 
left&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,400,0,1000,null,false);

	CreateSE("SE02","se人体_動作_ベルト外す01");
	MusicStart("SE02",0,700,0,1200,null,false);
	SetVolumeEX("SE02", 1000, 0, null);

	CreateTextureEX("絵背景200", 200, Center, Middle, "cg/bg/bg302021_5_グリッター居間天井.jpg");
	Fade("絵背景200", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0185]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000620a01">
"&.&.&.Mn&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,500,0,800,null,false);
	SetVolumeEX("SE01", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
His careful and hesitating fingers grab it softly&, pulling it out with care&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,500,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000630a04">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0192]
Clear's cheeks flush and he exhales&. He puts his forehead 
to the top of my shoulders&, kissing up my neck&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,500,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0193]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000640a01">
"Nn&.&.&.Mnn&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0194]
This time it's different with the way he enters his tongue and entwines it with mine&.

As he kisses me&, Clear starts to stroke my cock&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ20");
	MusicStart("SE01",0,700,0,1200,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 3, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0195]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000650a01">
"Uhn&.&.&.Ah&.&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000660a04">
"Aoba-san&, does it feel good?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
As we take a pause from kissing&, I become even more 
embarrassed when he asks me that question&.

He must've stirred me up&, because my lower body starts to 
become even hotter than before&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ20");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0202]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000670a01">
"&.&.&.Ha&.&.&.&.Haah&."

{
	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,600,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000680a04">
"&.&.&.Aoba-sa-&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0203]
Clear abruptly stops midsentence and also stops his hand&.

When I look his way&, I see that Clear is trying to hold 
back the pain&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景200", 250, null, true);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000690a01">
"Are you okay!?"

{
	Fw("fwクリア_正面崩壊裸_normal2");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000700a04">
"Yes&.&.&. I'm sorry&."

{
	Fw("fw蒼葉_通常_worry3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000710a01">
"We really should sto-!"

{
	CreateSE("SE01","se人体_動作_衣擦れ14");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fw("fwクリア_正面崩壊裸_serious2");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000720a04">
"No&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
Clear's face warps and he looks at me with conviction; he 
then grabs my clothes&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面崩壊裸_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0212]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000730a04">
"Only that&.&.&. No&. Please&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000740a01">
"&.&.&.I understand&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
Clear is determined to do this&.
So that's why I have to decide myself&.

I would do anything for this man&.
So I need to follow through with what I think&.

Together with Clear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0222]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/3000750a01">
"Hold on a second&."

{
	Fw("fwクリア_正面崩壊裸_normal2");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/3000760a04">
"Aoba-san?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_物_鳴る01");
	MusicStart("SE01",0,300,0,1000,null,false);

	CreateSE("SE02","se物体_ベッド_寝る01");
	MusicStart("SE02",0,600,0,1200,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
I lightly push Clear away and carefully lay him down on 
the floor&.

{
	CreateSE("SE01","se人体_動作_ベルト外す01");
	MusicStart("SE01",0,500,0,800,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ07");
	MusicStart("SE02",0,600,0,1000,null,false);
}
I move to the lower half of his body and take off his 
pants&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4532h.nss"]

}