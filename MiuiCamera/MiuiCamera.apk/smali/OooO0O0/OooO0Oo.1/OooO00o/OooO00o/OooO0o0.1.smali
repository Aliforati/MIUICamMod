.class public LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final OooO0OO:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public OooO00o:I

.field public OooO0O0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0$OooO00o;

    invoke-direct {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0$OooO00o;-><init>()V

    sput-object v0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO0OO:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO00o:I

    iput p2, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    return-void
.end method

.method public constructor <init>(LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO00o:I

    iput v0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO00o:I

    iget p1, p1, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    iput p1, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public OooO00o()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public OooO00o(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO00o:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    return-void
.end method

.method public OooO00o(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO00o:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public final OooO00o(II)Z
    .locals 1

    iget v0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO00o:I

    if-ne v0, p1, :cond_0

    iget p1, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooO00o(Ljava/lang/Object;)Z
    .locals 3

    if-eq p0, p1, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-class v1, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;

    iget v1, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO00o:I

    iget v2, p1, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO00o:I

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    iget v1, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    iget p1, p1, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    if-eq v1, p1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public OooO0O0()I
    .locals 2

    iget v0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO00o:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final OooO0O0(II)V
    .locals 1

    iget v0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO00o:I

    add-int/2addr v0, p1

    iput v0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO00o:I

    iget p1, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    add-int/2addr p1, p2

    iput p1, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    return-void
.end method

.method public final OooO0OO()V
    .locals 1

    iget v0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO00o:I

    neg-int v0, v0

    iput v0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO00o:I

    iget v0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    neg-int v0, v0

    iput v0, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    return-void
.end method

.method public OooO0OO(II)V
    .locals 0

    iput p1, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO00o:I

    iput p2, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    return-void
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO00o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LOooO0O0/OooO0Oo/OooO00o/OooO00o/OooO0o0;->OooO0O0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
