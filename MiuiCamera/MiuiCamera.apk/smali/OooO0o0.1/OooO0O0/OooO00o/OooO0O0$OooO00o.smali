.class public final enum LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0o0/OooO0O0/OooO00o/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OooO00o:LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;

.field public static final enum OooO0O0:LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;

.field public static final enum OooO0OO:LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;

.field public static final synthetic OooO0Oo:[LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;

    const/4 v1, 0x0

    const-string v2, "NotSpecified"

    invoke-direct {v0, v2, v1}, LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;->OooO00o:LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;

    new-instance v0, LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;

    const/4 v2, 0x1

    const-string v3, "Title"

    invoke-direct {v0, v3, v2}, LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;->OooO0O0:LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;

    new-instance v0, LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;

    const/4 v3, 0x2

    const-string v4, "Sentence"

    invoke-direct {v0, v4, v3}, LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;->OooO0OO:LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;

    const/4 v4, 0x3

    new-array v4, v4, [LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;

    sget-object v5, LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;->OooO00o:LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;

    aput-object v5, v4, v1

    sget-object v1, LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;->OooO0O0:LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;->OooO0Oo:[LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;
    .locals 1

    const-class v0, LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;

    return-object p0
.end method

.method public static values()[LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;
    .locals 1

    sget-object v0, LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;->OooO0Oo:[LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;

    invoke-virtual {v0}, [LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOooO0o0/OooO0O0/OooO00o/OooO0O0$OooO00o;

    return-object v0
.end method
