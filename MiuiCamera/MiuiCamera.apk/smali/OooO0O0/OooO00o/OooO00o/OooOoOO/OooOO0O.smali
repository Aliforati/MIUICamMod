.class public LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public OooO00o:F

.field public OooO0O0:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO00o:F

    iput p2, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO0O0:F

    return-void
.end method


# virtual methods
.method public OooO00o()F
    .locals 1

    iget v0, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO00o:F

    return v0
.end method

.method public OooO00o(FF)Z
    .locals 1

    iget v0, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO00o:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    iget p1, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO0O0:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooO0O0()F
    .locals 1

    iget v0, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO0O0:F

    return v0
.end method

.method public OooO0O0(FF)V
    .locals 0

    iput p1, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO00o:F

    iput p2, p0, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO0O0:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO00o()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0O;->OooO0O0()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
