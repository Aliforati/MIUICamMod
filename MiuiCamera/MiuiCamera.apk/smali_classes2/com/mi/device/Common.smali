.class public Lcom/mi/device/Common;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO00o:[I

.field public static final OooO0O0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/mi/device/Common;->OooO00o:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mi/device/Common;->OooO0O0:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x12
        -0xc
        -0x6
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x12
        -0xc
        -0x6
        0x0
        0x6
        0x6
        0x6
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooO00o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooO00o(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public OooO00o(Z)[I
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/mi/device/Common;->OooO00o:[I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/mi/device/Common;->OooO0O0:[I

    :goto_0
    return-object p1
.end method

.method public OooO0O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public OooO0Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooO0o()Ljava/lang/String;
    .locals 1

    const-string v0, "6"

    return-object v0
.end method

.method public OooO0o0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooO0oO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooO0oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooOO0()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public OooOO0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooOO0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooOOO()F
    .locals 1

    const/high16 v0, 0x41400000    # 12.0f

    return v0
.end method

.method public OooOOO0()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public OooOOOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooOOOo()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public OooOOo()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method public OooOOo0()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public OooOOoo()I
    .locals 1

    const/16 v0, 0x15e

    return v0
.end method

.method public OooOo()Ljava/lang/String;
    .locals 1

    const-string v0, "4"

    return-object v0
.end method

.method public OooOo0()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public OooOo00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooOo0O()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooOo0o()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooOoO()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooOoO0()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public OooOoOO()Ljava/lang/String;
    .locals 1

    const-string v0, "default"

    return-object v0
.end method

.method public OooOoo()Ljava/lang/String;
    .locals 1

    const-string v0, "common"

    return-object v0
.end method

.method public OooOoo0()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public OooOooO()[I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x6
        0x0
        0x6
    .end array-data
.end method

.method public OooOooo()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public Oooo()I
    .locals 1

    invoke-virtual {p0}, Lcom/mi/device/Common;->OoooOOo()I

    move-result v0

    return v0
.end method

.method public Oooo0()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Oooo000()Ljava/lang/String;
    .locals 1

    const-string v0, "4x3"

    return-object v0
.end method

.method public Oooo00O()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Oooo00o()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Oooo0O0()Ljava/lang/String;
    .locals 1

    const-string v0, "v21"

    return-object v0
.end method

.method public Oooo0OO()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public Oooo0o()Ljava/lang/String;
    .locals 1

    const-string v0, "4.5"

    return-object v0
.end method

.method public Oooo0o0()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public Oooo0oO()S
    .locals 1

    sget-object v0, Lcom/mi/device/SlowMotionEnum;->OooO0O0:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {v0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result v0

    return v0
.end method

.method public Oooo0oo()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public OoooO()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OoooO0()Ljava/lang/String;
    .locals 1

    const-string v0, "off"

    return-object v0
.end method

.method public OoooO00()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public OoooO0O()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public OoooOO0()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public OoooOOO()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OoooOOo()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public OoooOo0()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public OoooOoO()F
    .locals 1

    const/high16 v0, 0x41400000    # 12.0f

    return v0
.end method

.method public OoooOoo()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Ooooo00()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Ooooo0o()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public OooooO0()I
    .locals 1

    const/16 v0, 0x13b

    return v0
.end method

.method public OooooOO()F
    .locals 1

    const v0, 0x3f6068dc    # 0.8766f

    return v0
.end method

.method public OooooOo()I
    .locals 1

    const/16 v0, 0x118

    return v0
.end method

.method public Oooooo()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Oooooo0()I
    .locals 1

    const/16 v0, 0x118

    return v0
.end method

.method public OoooooO()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public Ooooooo()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public o0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0000()[F
    .locals 1

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0OOO0o()[F

    move-result-object v0

    return-object v0
.end method

.method public o00000()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o000000()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000000O()I
    .locals 1

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0000O0()I

    move-result v0

    return v0
.end method

.method public o000000o()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o00000O()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o00000O0()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public o00000OO()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public o00000Oo()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00000o0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00000oO()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00000oo()[F
    .locals 1

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0ooOoO()[F

    move-result-object v0

    return-object v0
.end method

.method public o0000O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0000O0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0000O00()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o0000O0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0000OO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0000OO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0000OOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0000OOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0000Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0000Oo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0000OoO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0000Ooo()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o0000o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0000o0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0000o0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0000o0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0000oO()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0000oO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0000oOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0000oOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0000oo()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0000oo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0000ooO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000O00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000O000()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000O00O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000O0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000O0O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000O0Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000O0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000O0o0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000O0oO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000O0oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000OO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000OO00()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000OO0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000OO0o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000OOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000OOo()[[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o000OOo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000OOoO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000Oo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000Oo00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000Oo0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000Oo0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000OoO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000OoOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000OoOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000Ooo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000Ooo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000OooO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000Oooo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000o00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000o000()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000o00O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000o00o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000o0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000o0O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000o0OO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000o0Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000o0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000o0o0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000o0oO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000o0oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000oOoO()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public o000oOoo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000oo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000oo00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000oo0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000oo0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000ooO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000ooO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o000ooOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000ooo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000ooo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000oooO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o000oooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O000()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0000()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O000o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O00O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O00OO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O00Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O00o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O00o0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O00oO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0O()S
    .locals 1

    sget-object v0, Lcom/mi/device/SlowMotionEnum;->OooO0O0:Lcom/mi/device/SlowMotionEnum;

    invoke-virtual {v0}, Lcom/mi/device/SlowMotionEnum;->OooO00o()S

    move-result v0

    return v0
.end method

.method public o00O0O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0O00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0O0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0O0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0OO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0OO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0OOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0OOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0Oo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0OoO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00O0Ooo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0o0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0o00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0o0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0o0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0oO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0oOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0oOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0oo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00O0ooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OO000()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OO00O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OO00o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OO0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OO0O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OO0OO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OO0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OO0o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OO0oO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OO0oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OOO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OOO00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OOO0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OOOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OOOO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OOOOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OOOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OOOo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OOOoO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OOoo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OOooO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OOooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00Oo0()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o00Oo00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00Oo000()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00Oo00o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00Oo0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00Oo0O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00Oo0Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00Oo0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00Oo0o0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00Oo0oO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00Oo0oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OoO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OoO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OoO00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OoO0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OoOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OoOO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OoOOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OoOOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00OoOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OoOo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OoOoO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OoOoo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00Ooo()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o00Ooo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00Ooo00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00Ooo0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00Ooo0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OooO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OooO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OooOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OooOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00OoooO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00Ooooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o000()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0000()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o000O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o000o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o00O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o00Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o00o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o00o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o00oO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o00oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0O()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o00o0O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0O00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0O0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o0OO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0OO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0OOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0OOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0Oo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o0OoO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0Ooo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0o00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0o0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0o0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0oO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0oO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0oOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0oOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0oo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00o0ooo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oO000()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oO00O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oO00o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oO0O()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public o00oO0O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oO0o()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOOO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oOOOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOOOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOOo0()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o00oOOoO()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o00oOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOo00()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOo0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOo0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOoO()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public o00oOoO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOoOO()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public o00oOoOo()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public o00oOoo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOoo0()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public o00oOooO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oOooo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oo0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oo000()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oo00O()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oo0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oo0O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oo0OO()I
    .locals 1

    const/16 v0, 0xb4

    return v0
.end method

.method public o00oo0Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00oo0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oo0o0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oo0oO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooO()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o00ooO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooO00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooO0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooO0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooOO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooOOo()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooOo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooOoO()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooOoo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooo()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o00ooo0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o00ooo00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooo0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooo0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oooO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oooOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oooOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oooo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00oooo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooooO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00ooooo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O00()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O000()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O00000()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0000O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0000o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O000O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O000Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O000o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O000o0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O000oo()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o0O00O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O00O0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O00O0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O00OO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O00OOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O00Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O00OoO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O00Ooo()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o0O00o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O00o0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O00o00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O00o0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O00o0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O00oO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0O00()[Ljava/lang/String;
    .locals 2

    const-string v0, "5:20:30:40:50:60"

    const-string v1, "3:10:10:10:10"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o0O0O0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0O0Oo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0O0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0O0o0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0O0oO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0O0oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0OO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0OO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0OO0O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0OOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0OOO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0OOOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0OOo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0OOoO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0OOoo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0Oo0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/device/Common;->o0OooO0()Z

    move-result v0

    return v0
.end method

.method public o0O0Oo0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0Oo0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0OoO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0OoO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0OoOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0Ooo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0Ooo0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0OooO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0Oooo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0o00()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0o000()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o0O0o00O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0O0o00o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0oo0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0ooO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0OO00O()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public o0OOO0o()[F
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x42fc0000    # 126.0f
        0x437d0000    # 253.0f
        0x43d20000    # 420.0f
        0x4408c000    # 547.0f
        0x441b4000    # 621.0f
        0x44520000    # 840.0f
        0x447a0000    # 1000.0f
    .end array-data
.end method

.method public o0Oo0oo()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public o0OoO00O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0OoO0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0OoOo0()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public o0OoOoOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0OoOoOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0OooO0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0o0Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0oO0O0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0oO0Ooo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0oOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0oOOo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0ooO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o0ooOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o0ooOO0()I
    .locals 1

    invoke-virtual {p0}, Lcom/mi/device/Common;->o00oO0O()I

    move-result v0

    return v0
.end method

.method public o0ooOOo()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public o0ooOoO()[F
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
        0x41700000    # 15.0f
        0x42480000    # 50.0f
        0x42fa0000    # 125.0f
    .end array-data
.end method

.method public o0ooOoOO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public oOO00O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public oOooo0o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public oo000o()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public oo00o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public oo00oO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public oo0O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public oo0OOoo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public oo0o0O0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public oo0o0Oo()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public oo0oOO0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ooOO()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public oooo00o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
