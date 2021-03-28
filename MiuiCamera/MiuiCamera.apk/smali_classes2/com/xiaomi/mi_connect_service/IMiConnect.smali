.class public interface abstract Lcom/xiaomi/mi_connect_service/IMiConnect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mi_connect_service/IMiConnect$Stub;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final OK:I


# virtual methods
.method public abstract abortInvitation(Ljava/lang/String;[B)I
.end method

.method public abstract acceptConnection(IIIZ)V
.end method

.method public abstract acceptInvitation(Ljava/lang/String;[B)I
.end method

.method public abstract clientAcceptConnection(Ljava/lang/String;[B)I
.end method

.method public abstract clientRejectConnection(Ljava/lang/String;[B)I
.end method

.method public abstract connectService(Ljava/lang/String;[B)I
.end method

.method public abstract connectServiceStatusResponse(Ljava/lang/String;[B)I
.end method

.method public abstract createConnection(Ljava/lang/String;[BLcom/xiaomi/mi_connect_service/IConnectionCallback;)I
.end method

.method public abstract destroy(II)V
.end method

.method public abstract destroyConnection(Ljava/lang/String;[B)I
.end method

.method public abstract deviceInfoIDM()[B
.end method

.method public abstract disconnectFromEndPoint(III)V
.end method

.method public abstract disconnectService(Ljava/lang/String;[B)I
.end method

.method public abstract event(Ljava/lang/String;[B)I
.end method

.method public abstract getIdHash()[B
.end method

.method public abstract getServiceApiVersion()I
.end method

.method public abstract inviteConnection(Ljava/lang/String;[B)I
.end method

.method public abstract publish(ILjava/lang/String;Ljava/lang/String;[B)I
.end method

.method public abstract registerIDMClient(Ljava/lang/String;[BLcom/xiaomi/mi_connect_service/IIDMClientCallback;)Ljava/lang/String;
.end method

.method public abstract registerProc(Ljava/lang/String;[BLcom/xiaomi/mi_connect_service/IIDMServiceProcCallback;)I
.end method

.method public abstract registerSoundBoxWhiteName(Lcom/xiaomi/mi_connect_service/ISoundBoxWhiteNameCallBack;)I
.end method

.method public abstract rejectConnection(III)V
.end method

.method public abstract request(Ljava/lang/String;[B)[B
.end method

.method public abstract requestConnection(II[B)V
.end method

.method public abstract response(Ljava/lang/String;[B)I
.end method

.method public abstract sendPayload(III[B)V
.end method

.method public abstract setCallback(IILcom/xiaomi/mi_connect_service/IMiConnectCallback;)V
.end method

.method public abstract setEventCallback(Ljava/lang/String;[B)I
.end method

.method public abstract setIPCDataCallback(ILjava/lang/String;Lcom/xiaomi/mi_connect_service/IIPCDataCallback;)I
.end method

.method public abstract startAdvertising(I[BII[B)V
.end method

.method public abstract startAdvertisingIDM(Ljava/lang/String;[B)Ljava/lang/String;
.end method

.method public abstract startDiscovery(I[BIII)V
.end method

.method public abstract startDiscoveryIDM(Ljava/lang/String;[B)I
.end method

.method public abstract startDiscoveryV2(I[BIII[I)V
.end method

.method public abstract startSap(Ljava/lang/String;Ljava/lang/String;IZLcom/xiaomi/mi_connect_service/IApStateCallback;)J
.end method

.method public abstract startScannerList(ILcom/xiaomi/mi_connect_service/IDeviceScannerCallback;Ljava/lang/String;)I
.end method

.method public abstract stopAdvertising(I)V
.end method

.method public abstract stopAdvertisingIDM(Ljava/lang/String;[B)I
.end method

.method public abstract stopDiscovery(I)V
.end method

.method public abstract stopDiscoveryIDM(Ljava/lang/String;[B)I
.end method

.method public abstract stopSap(J)V
.end method

.method public abstract subscribe(ILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/mi_connect_service/IDpsMessageListener;)I
.end method

.method public abstract unregisterIDMClient(Ljava/lang/String;)I
.end method

.method public abstract unregisterProc(Ljava/lang/String;)I
.end method

.method public abstract updateCommConfig(III[BI)I
.end method
