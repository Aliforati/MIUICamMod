.class public LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;",
        ">;"
    }
.end annotation


# instance fields
.field public OooO00o:I

.field public OooO0O0:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;->OooO00o:I

    iput p2, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget v0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;->OooO00o:I

    iget v1, p1, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;->OooO00o:I

    if-ne v0, v1, :cond_1

    iget v0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;->OooO0O0:I

    iget p1, p1, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;->OooO0O0:I

    sub-int/2addr v0, p1

    return v0

    :cond_1
    sub-int/2addr v0, v1

    return v0
.end method

.method public OooO00o()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;->OooO00o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;->OooO0O0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public OooO00o(II)Z
    .locals 1

    iget v0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;->OooO00o:I

    if-ne v0, p1, :cond_0

    iget p1, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;->OooO0O0:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooO00o(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    check-cast p1, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;

    iget v0, p1, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;->OooO00o:I

    iget p1, p1, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;->OooO0O0:I

    invoke-virtual {p0, v0, p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;->OooO00o(II)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public OooO0O0()I
    .locals 2

    iget v0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;->OooO00o:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;->OooO0O0:I

    add-int/2addr v0, v1

    return v0
.end method

.method public synthetic OooO0O0(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;

    invoke-virtual {p0, p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;->OooO00o(LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o;)I

    move-result p1

    return p1
.end method
