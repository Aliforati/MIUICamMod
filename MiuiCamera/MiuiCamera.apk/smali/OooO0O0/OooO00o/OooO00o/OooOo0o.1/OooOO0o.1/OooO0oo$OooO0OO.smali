.class public synthetic LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0oo$OooO0OO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0oo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic OooO00o:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;->values()[LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0oo$OooO0OO;->OooO00o:[I

    :try_start_0
    sget-object v1, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0oo$OooO0OO;->OooO00o:[I

    sget-object v1, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0o/OooO0oo$OooO0OO;->OooO00o:[I

    sget-object v1, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0O0$OooO00o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
