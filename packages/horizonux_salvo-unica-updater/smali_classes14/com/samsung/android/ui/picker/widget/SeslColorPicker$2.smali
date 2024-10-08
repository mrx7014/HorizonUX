.class Lcom/samsung/android/ui/picker/widget/SeslColorPicker$2;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Lcom/samsung/android/ui/picker/widget/SeslColorSwatchView$OnColorSwatchChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->initColorSwatchView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    .line 128
    iput-object p1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$2;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSwatchChanged(I)V
    .locals 2
    .param p1, "var1"    # I

    .line 130
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$2;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$202(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;Z)Z

    .line 131
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$2;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-static {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$300(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->setColor(I)V

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$2;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-static {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$600(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
