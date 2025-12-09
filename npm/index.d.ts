declare module '@apiverve/guidgenerator' {
  export interface guidgeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface guidgeneratorResponse {
    status: string;
    error: string | null;
    data: GUIDGeneratorData;
    code?: number;
  }


  interface GUIDGeneratorData {
      guids:   string[];
      count:   number;
      format:  string;
      version: number;
      variant: string;
  }

  export default class guidgeneratorWrapper {
    constructor(options: guidgeneratorOptions);

    execute(callback: (error: any, data: guidgeneratorResponse | null) => void): Promise<guidgeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: guidgeneratorResponse | null) => void): Promise<guidgeneratorResponse>;
    execute(query?: Record<string, any>): Promise<guidgeneratorResponse>;
  }
}
