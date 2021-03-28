.class public final enum Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

.field public static final enum CONN:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

.field public static final enum HOME:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

.field public static final enum LOST:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

.field public static final enum SCAN:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    const/4 v1, 0x0

    const-string v2, "HOME"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;->HOME:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    const/4 v2, 0x1

    const-string v3, "SCAN"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;->SCAN:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    const/4 v3, 0x2

    const-string v4, "CONN"

    invoke-direct {v0, v4, v3}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;->CONN:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    new-instance v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    const/4 v4, 0x3

    const-string v5, "LOST"

    invoke-direct {v0, v5, v4}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;->LOST:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    sget-object v6, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;->HOME:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    aput-object v6, v5, v1

    sget-object v1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;->SCAN:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    aput-object v1, v5, v2

    sget-object v1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;->CONN:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;->$VALUES:[Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;
    .locals 1

    const-class v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;
    .locals 1

    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;->$VALUES:[Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    invoke-virtual {v0}, [Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard$Type;

    return-object v0
.end method
