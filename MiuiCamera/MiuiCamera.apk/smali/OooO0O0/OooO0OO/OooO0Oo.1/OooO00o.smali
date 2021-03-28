.class public final synthetic LOooO0O0/OooO0OO/OooO0Oo/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/zxing/DocumentDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/zxing/DocumentDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0OO/OooO0Oo/OooO00o;->OooO00o:Lcom/android/zxing/DocumentDecoder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0OO/OooO0Oo/OooO00o;->OooO00o:Lcom/android/zxing/DocumentDecoder;

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {v0, p1}, Lcom/android/zxing/DocumentDecoder;->OooO00o(Landroid/util/Pair;)V

    return-void
.end method
