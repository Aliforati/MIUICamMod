.class public final enum LOooO0O0/OooO00o/OooO00o/OooOOo;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LOooO0O0/OooO00o/OooO00o/OooOOo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OooO00o:LOooO0O0/OooO00o/OooO00o/OooOOo;

.field public static final enum OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOOo;

.field public static final enum OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOOo;

.field public static final synthetic OooO0Oo:[LOooO0O0/OooO00o/OooO00o/OooOOo;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOOo;

    const/4 v1, 0x0

    const-string v2, "AUTOMATIC"

    invoke-direct {v0, v2, v1}, LOooO0O0/OooO00o/OooO00o/OooOOo;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOOo;

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOOo;

    const/4 v2, 0x1

    const-string v3, "HARDWARE"

    invoke-direct {v0, v3, v2}, LOooO0O0/OooO00o/OooO00o/OooOOo;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOOo;

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOOo;

    const/4 v3, 0x2

    const-string v4, "SOFTWARE"

    invoke-direct {v0, v4, v3}, LOooO0O0/OooO00o/OooO00o/OooOOo;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooOOo;

    const/4 v4, 0x3

    new-array v4, v4, [LOooO0O0/OooO00o/OooO00o/OooOOo;

    sget-object v5, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOOo;

    aput-object v5, v4, v1

    sget-object v1, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOOo;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO0Oo:[LOooO0O0/OooO00o/OooO00o/OooOOo;

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

.method public static valueOf(Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOo;
    .locals 1

    const-class v0, LOooO0O0/OooO00o/OooO00o/OooOOo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LOooO0O0/OooO00o/OooO00o/OooOOo;

    return-object p0
.end method

.method public static values()[LOooO0O0/OooO00o/OooO00o/OooOOo;
    .locals 1

    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO0Oo:[LOooO0O0/OooO00o/OooO00o/OooOOo;

    invoke-virtual {v0}, [LOooO0O0/OooO00o/OooO00o/OooOOo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOooO0O0/OooO00o/OooO00o/OooOOo;

    return-object v0
.end method
