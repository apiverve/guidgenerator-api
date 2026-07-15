declare module '@apiverve/guidgenerator' {
  export interface guidgeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface guidgeneratorResponse {
    status: string;
    error: string | null;
    data: GUIDGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface GUIDGeneratorData {
      guids:   (null | string)[];
      count:   number | null;
      format:  null | string;
      version: number | null;
      variant: null | string;
  }

  export default class guidgeneratorWrapper {
    constructor(options: guidgeneratorOptions);

    execute(callback: (error: any, data: guidgeneratorResponse | null) => void): Promise<guidgeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: guidgeneratorResponse | null) => void): Promise<guidgeneratorResponse>;
    execute(query?: Record<string, any>): Promise<guidgeneratorResponse>;
  }
}
