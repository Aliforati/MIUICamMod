.class public LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;
    }
.end annotation


# instance fields
.field public final OooO:I

.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:Ljava/lang/String;

.field public final OooO0OO:F

.field public final OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;

.field public final OooO0o:F

.field public final OooO0o0:I

.field public final OooO0oO:F

.field public final OooO0oo:I

.field public final OooOO0:F

.field public final OooOO0O:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;IFFIIFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooO0O0:Ljava/lang/String;

    iput p3, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooO0OO:F

    iput-object p4, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;

    iput p5, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooO0o0:I

    iput p6, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooO0o:F

    iput p7, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooO0oO:F

    iput p8, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooO0oo:I

    iput p9, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooO:I

    iput p10, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooOO0:F

    iput-boolean p11, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooOO0O:Z

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 5

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    iget v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooO0OO:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooO0Oo:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooO0o0:I

    add-int/2addr v0, v1

    iget v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooO0o:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0;->OooO0oo:I

    add-int/2addr v0, v1

    return v0
.end method
