.class public LOooO0O0/OooO00o/OooO00o/OooO0o0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static OooO00o:Z = false

.field public static final OooO0O0:Ljava/lang/String; = "LOTTIE"

.field public static final OooO0OO:I = 0x14

.field public static OooO0Oo:Z

.field public static OooO0o:[J

.field public static OooO0o0:[Ljava/lang/String;

.field public static OooO0oO:I

.field public static OooO0oo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0Oo:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0oO:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    sget p0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0oo:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0oo:I

    return-void

    :cond_1
    sget-object v1, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0o0:[Ljava/lang/String;

    aput-object p0, v1, v0

    sget-object v1, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0o:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v1, v0

    invoke-static {p0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    sget p0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0oO:I

    add-int/lit8 p0, p0, 0x1

    sput p0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0oO:I

    return-void
.end method

.method public static OooO00o(Z)V
    .locals 1

    sget-boolean v0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0Oo:Z

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    sput-boolean p0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0Oo:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x14

    new-array v0, p0, [Ljava/lang/String;

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0o0:[Ljava/lang/String;

    new-array p0, p0, [J

    sput-object p0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0o:[J

    :cond_1
    return-void
.end method

.method public static OooO0O0(Ljava/lang/String;)F
    .locals 4

    sget v0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0oo:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    sput v0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0oo:I

    return v1

    :cond_0
    sget-boolean v0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0Oo:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget v0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0oO:I

    add-int/lit8 v0, v0, -0x1

    sput v0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0oO:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    sget-object v1, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0o0:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object p0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0o:[J

    sget v2, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0oO:I

    aget-wide v2, p0, v2

    sub-long/2addr v0, v2

    long-to-float p0, v0

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr p0, v0

    return p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbalanced trace call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Expected "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0o0:[Ljava/lang/String;

    sget v2, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0oO:I

    aget-object p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t end trace section. There are none."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
