package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
/* compiled from: com.google.android.gms:play-services-base@@18.1.0 */
/* loaded from: classes.dex */
public class StatusPendingResult extends BasePendingResult<Status> {
    @Deprecated
    public StatusPendingResult(Looper looper) {
        super(looper);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: createFailedResult */
    public final /* bridge */ /* synthetic */ Status mo340createFailedResult(Status status) {
        return status;
    }

    public StatusPendingResult(GoogleApiClient apiClient) {
        super(apiClient);
    }
}
